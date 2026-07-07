allocatemem(2^31);
bnf = bnfinit(y^2 - 4190205, 1);
bnr = bnrinit(bnf, [6144, [1,1]]);
cyc = bnr.clgp.cyc; \\ [12288, 512, 8, 4, 2]
n = #cyc;
K = nfinit(bnf);

\\ does the degree-4 quotient (512-factor, index4) factor over F, or is it a genuine
\\ irreducible quartic (not a compositum of two quadratics already found)?
sub_q4 = matdiagonal(concat([1,4,1,1],[1]));
pol_q4 = bnrclassfield(bnr, sub_q4)[1];
fac_q4 = nffactor(K, pol_q4);
print("quartic factorization over F: "); print(fac_q4);

\\ remaining natural small quotients not yet pulled:
\\ 512-factor at index 2 (quadratic) and index 8 (octic, cheap upper bound)
sub_512_q2 = matdiagonal(concat([1,2,1,1],[1]));
pol_512_q2 = bnrclassfield(bnr, sub_512_q2)[1];
print("512-factor index-2 quadratic: ", pol_512_q2);

\\ 8-factor at index 4 (quartic)
sub_8_q4 = matdiagonal(concat([1,1,4,1],[1]));
pol_8_q4 = bnrclassfield(bnr, sub_8_q4)[1];
print("8-factor index-4 quartic: ", pol_8_q4);

\\ 12288-factor (the big one) at index 4 (below the Zauner-3): degree 4 quotient,
\\ genuinely 2-power, orthogonal to the Zauner cubic
sub_big_q4 = matdiagonal(concat([12288/4], vector(n-1,i,1)));
pol_big_q4 = bnrclassfield(bnr, sub_big_q4)[1];
print("main-factor index-4 (2-power) quotient: ", pol_big_q4);

\\ genus-theory sanity: 2-rank of Cl_f should match 2-adic factorization count of
\\ the conductor's ramified primes (cheap, no bnrclassfield needed)
print("2-rank (number of even cyc entries): ", sum(i=1,n, cyc[i]%2==0));
quit
