#!/usr/bin/env bash
# Negative control for the non-forking razor.
# Three conjectures that turned out FALSE, each as affirmation and negation.
# For a false conjecture the counterexample is a real object, so if the razor
# discriminates, the NEGATION should imscribe as a distinct object rather than
# collapsing onto the descent crystal.
cd /home/mrnob0dy666/imsgct/ob3ect
run () { printf '\n===== %s =====\n' "$1"; timeout 1800 python3 auto.py "$2" 2>&1 | grep -E "^Saved to:|glyph_word" | tail -2; }

run euler_affirm  "a fifth power is never the sum of four fifth powers"
run euler_negate  "four fifth powers sum to a fifth power"
run polya_affirm  "up to every bound the numbers with an odd count of prime factors lead"
run polya_negate  "past some bound the numbers with an even count of prime factors lead"
run mertens_affirm "the Mertens sum stays inside the square-root bound at every height"
run mertens_negate "the Mertens sum passes outside the square-root bound at some height"
echo "ALL DONE"
