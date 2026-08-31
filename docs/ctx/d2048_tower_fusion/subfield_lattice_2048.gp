allocatemem(2^31);
bnf = bnfinit(y^2 - 4190205, 1);
bnr = bnrinit(bnf, [6144, [1,1]]);
cyc = bnr.clgp.cyc;
n = #cyc;
print("Cl_f cyclic invariants: ", cyc, "  n=", n);

\\ Zauner cubic: subgroup of index 3 in the first (order-12288) factor, full in rest
sub_zauner = matdiagonal(concat([3], vector(n-1, i, 1)));
print("sub_zauner (should have det 3): ", matdet(sub_zauner));
pol_zauner = bnrclassfield(bnr, sub_zauner);
print("Zauner cubic field poly: ", pol_zauner);

\\ smallest quadratic: kill everything except the last Z/2 factor at half-index
sub_q = matdiagonal(concat(vector(n-1, i, 1), [2]));
print("sub_q (should have det 2): ", matdet(sub_q));
pol_q = bnrclassfield(bnr, sub_q);
print("smallest quadratic quotient poly: ", pol_q);
quit
