\\ Stage 4b: size the ray class field K_2048 over F = Q(sqrt(4190205))
\\ SIC conductor (Appleby, mirrors d=12's (3d)inf1inf2 = (36)): (6144)inf1inf2
allocatemem(2^31);
bnf = bnfinit(x^2 - 4190205, 1);
print("F = Q(sqrt(4190205)): h = ", bnf.clgp.no, "  cyc = ", bnf.clgp.cyc, "  reg = ", bnf.reg);
bnr = bnrinit(bnf, [6144, [1,1]]);
print("Cl_f(6144*inf1*inf2): order = ", bnr.clgp.no);
print("cyclic structure = ", bnr.clgp.cyc);
print("[K2048:F] = ", bnr.clgp.no, "   [K2048:Q] = ", 2*bnr.clgp.no);
print("3-part (Zauner order-3 needs 3 | exponent): exponent = ", bnr.clgp.cyc[1]);
quit
