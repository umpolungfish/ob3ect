"""
Batch 3: Persist earlier ob3ects + final exotic additions.
Author: Lando ⊗ ⊙perator
"""
import sys, asyncio, json, re
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent.parent))
from ob3ect.auto import auto_design

FINAL_OB3ECTS = [
    {
        "desc": "Tarot spread ob3ect: the 78-card tarot deck as a self-imscribing divination system. FSPLIT: the Celtic Cross spread splits the querent's situation into ten positional meanings — present, challenge, past, future, above, below, advice, external influences, hopes/fears, outcome. FFUSE: the reader synthesizes all ten positions back into a coherent narrative that reconstitutes the original question with insight. VINIT: the shuffled but undrawn deck. TANCH: the completed spread layout. AFWD: a card drawn upright. AREV: a card drawn reversed. ENGAGR: two cards in the same spread that flatly contradict each other yet must both be true — the Tower and the Star together.",
        "domain": "divinatory",
        "scope": "local",
    },
    {
        "desc": "Sigil charging ob3ect: chaos magic sigilization where intention is encoded into an abstract glyph, charged with gnosis, then forgotten. FSPLIT: the statement of desire is decomposed into its constituent letters, stripped of repeating letters, and the remaining letters are abstracted into a graphic sigil — the intention splits into pure symbolic essence. FFUSE: gnostic charging (orgasm, meditation, pain, or exhaustion) fires the sigil, reconstituting the original intention into reality. VINIT: unformed desire. TANCH: the completed sigil. AFWD: charging with gnosis. AREV: forgetting (the sigil must be forgotten to fire). ENGAGR: the sigil is simultaneously a meaningless squiggle and a container of potent will.",
        "domain": "magical",
        "scope": "local",
    },
    {
        "desc": "Alchemical alembic ob3ect: the Great Work of solve et coagula — the dissolution and reconstitution of the prima materia through the four stages of nigredo, albedo, citrinitas, and rubedo. FSPLIT: solve (dissolution) breaks the prima materia into its three principles — Sulfur (soul), Mercury (spirit), Salt (body). FFUSE: coagula (coagulation) reunites the purified principles as the Philosopher's Stone. VINIT: the unworked prima materia. TANCH: the hermetic vessel sealed with the seal of Hermes. AFWD: sublimation. AREV: precipitation. ENGAGR: nigredo — the black stage where the matter is simultaneously putrefying (dying) and germinating (being reborn).",
        "domain": "alchemical",
        "scope": "mesoscale",
    },
    {
        "desc": "Elder Futhark rune casting ob3ect: 24 runes of the Elder Futhark cast onto a white cloth. FSPLIT: the casting of the handful scatters runes across the cloth, splitting the querent's situation into positional meanings — center=present, periphery=influences, face-down=hidden, face-up=manifest. FFUSE: the rune-reader weaves all landed runes into a single narrative, reconstituting the original question with the Norns' voice. VINIT: the rune bag with 24 stones. TANCH: the white cloth's circular border. AFWD: a rune drawn upright. AREV: a rune drawn merkstave (inverted). ENGAGR: a rune that can be read as simultaneously upright and merkstave depending on the reader's angle.",
        "domain": "divinatory",
        "scope": "local",
    },
    {
        "desc": "I Ching hexagram ob3ect: the 64 hexagrams of the Book of Changes, each composed of 6 lines that may be solid (yang) or broken (yin), with moving lines that transform. FSPLIT: yarrow stalk sorting splits the moment into moving lines (old yin, old yang) and static lines (young yin, young yang) — the moving lines generate a second hexagram from the first. FFUSE: the present hexagram and approaching hexagram are read together, reconstituting the original moment of consultation with the wisdom of change. VINIT: the uncut bundle of 50 yarrow stalks. TANCH: the completed hexagram of 6 lines. AFWD: a yang line (solid). AREV: a yin line (broken). ENGAGR: the moment of change where a line is simultaneously old yang and young yin.",
        "domain": "divinatory",
        "scope": "mesoscale",
    },
    {
        "desc": "Kabbalistic Tree of Life ob3ect: 10 Sephirot (Kether, Chokmah, Binah, Chesed, Geburah, Tiferet, Netzach, Hod, Yesod, Malkuth) and 22 connecting paths. FSPLIT: the Lightning Flash emanates from Kether down through all 10 Sephirot — Ein Sof splits into the tree of manifestation. FFUSE: the Serpent Path ascends from Malkuth back to Kether — multiplicity reconstitutes original unity. VINIT: Ain Soph Aur (limitless light before emanation). TANCH: the complete Tree diagram. AFWD: the lightning flash descent. AREV: the serpent path ascent. ENGAGR: Daath — the hidden sephirah that simultaneously IS and IS NOT on the tree.",
        "domain": "mystical",
        "scope": "mesoscale",
    },
    # ── New additions ──
    {
        "desc": "Automatic writing / psychography ob3ect: the spiritualist practice where a medium's hand writes messages from spirits, the subconscious, or the collective unconscious without conscious control. FSPLIT: the medium enters trance, splitting consciousness into the observing self (watching the hand move) and the writing self (the hand producing text autonomously). FFUSE: the medium reads the written text, reconstituting the two streams — the message integrates into conscious awareness. VINIT: the blank page and still hand. TANCH: the filled page. AFWD: the pen moves forward across the page. AREV: the pen retraces or crosses out — spirit editing. ENGAGR: the writing is simultaneously from the medium (their hand wrote it) and not from the medium (they did not consciously author it).",
        "domain": "spiritualist",
        "scope": "local",
    },
    {
        "desc": "Bibliomancy ob3ect: divination by random opening of a sacred or significant book, letting the finger fall on a passage. FSPLIT: the opening of the book splits the unified text into the single passage revealed — the universe selects one fragment from the whole. FFUSE: the querent interprets the passage in the context of their question, reconstituting the random fragment as meaningful answer. VINIT: the closed book. TANCH: the book's covers — the boundary of all possible answers. AFWD: opening the book (forward in the text). AREV: flipping pages backward. ENGAGR: the passage is simultaneously random (stochastic selection) and destined (the universe chose it).",
        "domain": "divinatory",
        "scope": "local",
    },
    {
        "desc": "Ecstatic dance trance ob3ect: ritual dance that induces altered states through repetitive movement, breath, and drumming until the dancer transcends ordinary consciousness. FSPLIT: the dance splits the practitioner into the dancing body (autonomous, moving to rhythm) and the witnessing awareness (detached, observing the body dance). FFUSE: at the peak of ecstasy, body and awareness reconstitute into a unified transcendent state — the dancer becomes the dance. VINIT: stillness before the first drumbeat. TANCH: the dance circle. AFWD: movement outward — expansion. AREV: movement inward — contraction. ENGAGR: the ecstatic state where the dancer is simultaneously fully embodied (every cell awake) and fully disembodied (consciousness floating above).",
        "domain": "shamanic",
        "scope": "local",
    },
    {
        "desc": "Lithomancy ob3ect: divination by casting stones, crystals, or pebbles — each stone type carries a specific meaning (rose quartz=love, obsidian=protection, amethyst=intuition, citrine=abundance). FSPLIT: the stones are cast onto a cloth divided into zones (past, present, future, hidden), splitting the question across stone meanings and zone placements. FFUSE: the reader integrates stone type + zone position + proximity relationships, reconstituting the scattered stones into a coherent divinatory answer. VINIT: the bag of undrawn stones. TANCH: the casting cloth with its zonal boundaries. AFWD: a stone landing in the future zone. AREV: a stone landing in the past zone. ENGAGR: two stones of opposite meaning (e.g., rose quartz and obsidian) landing in the same zone.",
        "domain": "divinatory",
        "scope": "local",
    },
    {
        "desc": "Apotropaic ward ob3ect: a protective magical object (horseshoe, nazar, hamsa, witch bottle, or threshold mark) that deflects malevolent forces. FSPLIT: the ward intercepts the incoming curse or evil eye, splitting the malicious intention from its target — the ward catches what was meant for the protected person. FFUSE: the ward neutralizes and grounds the intercepted malice, reconstituting the situation as safety — the threat is dissolved, not merely deflected. VINIT: the unprotected threshold. TANCH: the ward itself as boundary object. AFWD: the curse approaches. AREV: the curse is turned back. ENGAGR: the ward is simultaneously a physical object (glass, iron, herbs) and a spiritual agent (it acts with apparent intention).",
        "domain": "magical",
        "scope": "local",
    },
    {
        "desc": "Oracular smoke ob3ect: capnomancy — divination by reading smoke patterns rising from a sacred fire or incense. FSPLIT: the fire splits the solid offering (herbs, resins, woods) into smoke (the visible message) and ash (the spent residue). FFUSE: the seer interprets the smoke's shape, direction, thickness, and color, reconstituting the scattered visual signals into a prophetic message. VINIT: the unlit kindling and unburned incense. TANCH: the brazier or censer as container. AFWD: smoke rising straight and strong (auspicious). AREV: smoke descending or blowing back toward the seer (warning, blockage). ENGAGR: smoke that forms a shape recognizable as two contradictory omens simultaneously.",
        "domain": "divinatory",
        "scope": "local",
    },
]


async def generate_all():
    results = []
    for i, spec in enumerate(FINAL_OB3ECTS):
        slug = re.sub(r'[^a-z0-9]+', '_', spec["desc"].split(":")[0].strip().lower())[:40]
        print(f"\n{'='*60}")
        print(f"[{i+1}/{len(FINAL_OB3ECTS)}] {slug}")
        print(f"{'='*60}")
        try:
            art = await auto_design(
                spec["desc"],
                domain_type=spec["domain"],
                scope=spec["scope"],
                max_retries=3,
            )
            out_dir = Path(f"ob3ect/digital/{slug}")
            out_dir.mkdir(parents=True, exist_ok=True)
            json_path = out_dir / f"{slug}_ob3ect.json"
            art.save(json_path)
            print(f"  FROBENIUS: {art.split_fuse_report.frobenius_verdict}")
            print(f"  VALID: {art.is_valid_ob3ect}")
            print(f"  CLOSURE: {art.bootstrap_sequence.closure_verified}")
            print(f"  SAVED: {json_path}")
            results.append({"slug": slug, "verdict": art.split_fuse_report.frobenius_verdict, "valid": art.is_valid_ob3ect})
        except Exception as e:
            print(f"  FAILED: {e}")
            results.append({"slug": slug, "verdict": "ERROR", "error": str(e)})
    print(f"\n{'='*60}")
    print("BATCH 3 SUMMARY")
    print(f"{'='*60}")
    for r in results:
        status = "✅" if r.get("valid") else "❌"
        print(f"  {status} {r['slug']}: {r['verdict']}")

asyncio.run(generate_all())
