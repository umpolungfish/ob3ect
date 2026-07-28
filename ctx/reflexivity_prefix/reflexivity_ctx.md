# Reflexive meta-prefix finding — frozen context

Six ob3ect runs tonight (2026-07-06/07), same auto.py pipeline, same provider
(openrouter, google/gemini-3-flash-preview), same domain (computational). Three
referent pairs, each run once with the entity description prefixed by
"imscription of " and once without (bare referent). Fingerprint data
in reflexivity_data.json.

## The three pairs

1. weyl_heisenberg_char_obstruction (prefixed only, no bare run)
2. dialetheic_b_state (prefixed only, no bare run)
3. frame_potential_plateau: prefixed sig=(9,2,3,2) period=16 pairs=[(5,12)]
                            bare      sig=(8,4,3,2) period=17 pairs=[(5,8),(11,13)]
4. lm_descent:              prefixed sig=(11,6,7,2) period=26 pairs=[(6,9),(10,15),(19,24)]
                            bare      sig=(10,4,2,2) period=18 pairs=[(3,6),(11,14)]

Note: (1) and (2), both prefixed, both single-clause short descriptions of a
d=2048 SIC-transport sub-object, land on the IDENTICAL fingerprint:
sig=(6,2,3,2) period=13 pairs=[(4,11)]. Two different referents, same short
prefixed form, same protocol.

## What is invariant across all six runs

is_valid_ob3ect: true (6/6). frobenius_verdict: PASS (6/6). tier: O_1 (6/6).
dialetheia_complete: true (6/6, per earlier phase_3 inspection).

## What varies

Removing the "imscription of " prefix (keeping the referent's
substantive content identical) changed: fingerprint sig, period, and the
FSPLIT/FFUSE pair count/positions, in BOTH pairs where it was tested. The
direction is not uniform: plateau prefixed->bare period 16->17 (+1, pair
count 1->2); lm_descent prefixed->bare period 26->18 (-8, pair count 3->2).

## The question this ob3ect batch is for

Characterize the reflexive meta-prefix ("imscription of X" vs "X")
as its own structural operator on the IGProtocol construction: what primitive
or opcode delta does prepending self-referential framing to a description
inject into the resulting protocol, given that it demonstrably changes
protocol depth/shape while leaving validity, Frobenius closure, and tier
invariant. This is a claim about the Grammar's own behavior under reflexive
naming, not about d=2048 SIC-POVMs.
