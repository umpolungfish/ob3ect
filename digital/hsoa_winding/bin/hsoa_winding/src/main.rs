//! hsoa_winding — topological period readout via exceptional-point winding,
//! with in-binary Shor post-processing.
//!
//! CLI:
//!   hsoa_winding <N> [rounds]   full pipeline: lift, classify, winding
//!   hsoa_winding --winding <N>  winding + Shor post-processing only
//!   hsoa_winding --lift <path>  lift/parse/word/classify + verdict
//!
//! Exit codes: 0 T | 1 B | 2 F | 3 N
use hsoa_core::*;

fn factorize(n: u64) -> Vec<u64> {
    let mut out = Vec::new();
    let mut x = n;
    let mut d = 2u64;
    while d * d <= x {
        while x % d == 0 {
            out.push(d);
            x /= d;
        }
        d += 1;
    }
    if x > 1 {
        out.push(x);
    }
    out
}

fn read_word(path: &str) -> Result<Vec<u8>, String> {
    fs::read(path).map_err(|e| e.to_string())
}

fn lift_file(path: &str) -> Result<(Vec<u8>, Vec<Vec<u8>>, WordInfo), String> {
    let data = read_word(path)?;
    let segs = segment(&data);
    let w = Word::from_bytes(&data);
    Ok((data, segs, w))
}

fn word_readout(w: &WordInfo) {
    println!("word: {} glyphs, {} ops, {} bytes", w.glyphs, w.ops, w.bytes);
    for (i, op) in w.op_list.iter().enumerate() {
        if i < 24 {
            println!("  op{:03}  {}", i, op);
        }
    }
    if w.op_list.len() > 24 {
        println!("  ... ({} more ops)", w.op_list.len() - 24);
    }
}

fn lift_and_classify(path: &str) -> Result<(u8, WordInfo), String> {
    let (_data, _segs, w) = lift_file(path)?;
    word_readout(&w);
    let cls = classify(&w);
    println!(
        "classify: verdict={} closed={} fully_closed={} forks={} fuses={} work_arms={} open_in={} open_out={}",
        cls.verdict,
        cls.closed,
        cls.fully_closed,
        cls.forks,
        cls.fuses,
        cls.work_arms,
        cls.open_in,
        cls.open_out
    );
    Ok((cls.verdict, w))
}

fn parse_u64(s: &str) -> Option<u64> {
    s.parse().ok()
}
fn winding(n: u64, rounds: u32) -> (u32, bool) {
    if n < 3 {
        return (0, false);
    }
    let mut w = 0u64;
    for k in 0..=rounds {
        let mut a = n - 1;
        for _ in 0..k {
            a = (a * a) % n;
        }
        let mut d = gcd(a - 1, n);
        if d == n {
            d = gcd((a * a) % n - 1, n);
        }
        if d > 1 && d < n {
            return (k, true);
        }
        w = w.max(d);
    }
    (0, false)
}

fn shor(n: u64, rounds: u32) -> Option<(u64, u64)> {
    let (k, ok) = winding(n, rounds);
    if !ok || k == 0 {
        return None;
    }
    let mut d = 1u64;
    for _ in 0..k {
        d = (d * 2) % n;
    }
    if d == 1 {
        return None;
    }
    let g1 = gcd(d + 1, n);
    if g1 > 1 && g1 < n {
        return Some((g1, n / g1));
    }
    let g2 = gcd(d - 1, n);
    if g2 > 1 && g2 < n {
        return Some((g2, n / g2));
    }
    None
}

fn run_winding(n: u64, rounds: u32) -> u8 {
    println!("N = {n}");
    let fac = factorize(n);
    if fac.len() == 1 {
        println!("N is prime; winding degenerates to order-1. no witness.");
        return 3;
    }
    println!("factorize (trial division): {}", fac.iter().map(|f| f.to_string()).collect::<Vec<_>>().join(" * "));
    let (k, ok) = winding(n, rounds);
    if !ok {
        println!("winding: no EP hit within {rounds} rounds. N (identity).");
        return 3;
    }
    println!("winding: k = {k}");
    match shor(n, rounds) {
        Some((p, q)) => {
            println!("shor post-processing: N = {} * {}  -> T (closes)", p, q);
            if p * q != n {
                eprintln!("closure violated: {} * {} != {}", p, q, n);
                return 2;
            }
            0
        }
        None => {
            println!("winding hit but shor post-processing gave no split. B (paradox held).");
            1
        }
    }
}

fn usage() {
    eprintln!("usage: hsoa_winding <N> [rounds]");
    eprintln!("       hsoa_winding --winding <N> [rounds]");
    eprintln!("       hsoa_winding --lift <path>");
    std::process::exit(2);
}

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() < 2 {
        usage();
    }
    match args[1].as_str() {
        "--winding" => {
            if args.len() < 3 {
                usage();
            }
            let n = match parse_u64(&args[2]) {
                Some(v) if v >= 3 => v,
                _ => {
                    eprintln!("need N >= 3");
                    std::process::exit(2);
                }
            };
            let rounds = args.get(3).and_then(parse_u64).unwrap_or(12) as u32;
            std::process::exit(run_winding(n, rounds) as i32);
        }
        "--lift" => {
            if args.len() < 3 {
                usage();
            }
            match lift_and_classify(&args[2]) {
                Ok((v, _w)) => std::process::exit(v as i32),
                Err(e) => {
                    eprintln!("lift failed: {e}");
                    std::process::exit(2);
                }
            }
        }
        other => {
            if other.starts_with('-') {
                usage();
            }
            let n = match parse_u64(other) {
                Some(v) if v >= 3 => v,
                _ => {
                    eprintln!("need N >= 3");
                    std::process::exit(2);
                }
            };
            let rounds = args.get(2).and_then(parse_u64).unwrap_or(20) as u32;
            let verdict = lift_and_classify(other).map(|(v, _w)| v).unwrap_or(2);
            let code = run_winding(n, rounds);
            std::process::exit((verdict + code) as i32);
        }
    }
}