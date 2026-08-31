allocatemem(2^31);
bnf = bnfinit(y^2 - 4190205, 1);
bnr = bnrinit(bnf, [6144, [1,1]]);
cyc = bnr.clgp.cyc;
n = #cyc;
print("cyc = ", cyc);

sub_zauner = matdiagonal(concat([3], vector(n-1, i, 1)));
pol_zauner = bnrclassfield(bnr, sub_zauner)[1];
print("Zauner cubic: ", pol_zauner);
\\ irreducibility over F: factor over the number field K=F
K = nfinit(bnf);
fz = nffactor(K, pol_zauner);
print("Zauner cubic factorization over F: ", fz);
\\ absolute discriminant sanity (rational, should be nonzero)
print("disc(cubic as poly in x over Q(y)): ", poldisc(pol_zauner));

\\ next 2-power pieces: quotient by index-4 and index-8 subgroups of the 512-factor
sub_q4 = matdiagonal(concat([1,4,1,1], [1]));
pol_q4 = bnrclassfield(bnr, sub_q4)[1];
print("degree-4 quotient (from 512-factor, index 4): ", pol_q4);

sub_q8 = matdiagonal(concat([1,1,1,1], [1])); \\ placeholder recheck below
\\ degree-3-factor (the '8' cyc entry) smallest quotient of index 2
sub_q2b = matdiagonal(concat([1,1,2,1,1]));
pol_q2b = bnrclassfield(bnr, sub_q2b)[1];
print("quadratic from the '8' factor: ", pol_q2b);

sub_q2c = matdiagonal(concat([1,1,1,2,1]));
pol_q2c = bnrclassfield(bnr, sub_q2c)[1];
print("quadratic from the '4' factor: ", pol_q2c);
quit
