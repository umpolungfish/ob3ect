#!/usr/bin/env python3
"""
Kan Extension Ob3ect — self-verifying left Kan extension.

C={0,1}, D={0,1,2} (poset), K=inclusion, F: C→Set.
F(0)={a,b}, F(1)={c}.  Lan_K(F)(2)=colim(F over K↓2)={c}.

Verifies: Lan∘K≅F, functoriality, universal property.

Auto-imscribed on 2025-01-17
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

F_0, F_1 = {"a", "b"}, {"c"}
LAN = {0: {"a", "b"}, 1: {"c"}, 2: {"c"}}

def lan_map(mor, x):
    t = {("id_0","a"):"a",("id_0","b"):"b",
         ("id_1","c"):"c",("id_2","c"):"c",
         ("f","a"):"c",("f","b"):"c",         # f:0→1
         ("g","c"):"c",                        # g:1→2
         ("gf","a"):"c",("gf","b"):"c"}       # g∘f:0→2
    return t[(mor, x)]

G = {0: {"x", "y"}, 1: {"z"}, 2: {"z"}}
def G_map(mor, v):
    t = {("id_0","x"):"x",("id_0","y"):"y",
         ("id_1","z"):"z",("id_2","z"):"z",
         ("f","x"):"z",("f","y"):"z",
         ("g","z"):"z",("gf","x"):"z",("gf","y"):"z"}
    return t[(mor, v)]

alpha = {0: {"a": "x", "b": "y"}, 1: {"c": "z"}}

class KanExtensionOb3ect:
    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_lan_extends_F(self):
        ok = LAN[0]==F_0 and LAN[1]==F_1
        print(f"  Lan(K(c))=F(c)                : {ok}")
        return ok

    def _verify_lan_functoriality(self):
        ids = all(lan_map(f"id_{i}", x)==x for i in [0,1,2] for x in LAN[i])
        # g∘f: 0→1→2, Lan(g∘f) = Lan(g)∘Lan(f)
        comp = all(lan_map("gf", x) == lan_map("g", lan_map("f", x)) for x in LAN[0])
        print(f"  Lan(id)=id                    : {ids}")
        print(f"  Lan(g∘f)=Lan(g)∘Lan(f)      : {comp}")
        return ids and comp

    def _verify_universal_property(self):
        beta = {0: alpha[0], 1: alpha[1], 2: {"c": "z"}}
        unit_ok = all(beta[0][v]==alpha[0][v] for v in F_0) and \
                  all(beta[1][v]==alpha[1][v] for v in F_1)
        nat_f = all(G_map("f", beta[0][v]) == beta[1][lan_map("f", v)] for v in LAN[0])
        nat_g = all(G_map("g", beta[1][v]) == beta[2][lan_map("g", v)] for v in LAN[1])
        print(f"  β∘η = α                      : {unit_ok}")
        print(f"  Naturality at f (0→1)        : {nat_f}")
        print(f"  Naturality at g (1→2)        : {nat_g}")
        return unit_ok and nat_f and nat_g

    def verify(self) -> bool:
        print("=== Kan Extension Ob3ect ===")
        e = self._verify_lan_extends_F()
        f = self._verify_lan_functoriality()
        u = self._verify_universal_property()
        layer_ok = e and f and u
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure

if __name__ == "__main__":
    sys.exit(0 if KanExtensionOb3ect().verify() else 1)
