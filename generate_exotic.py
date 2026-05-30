"""
Batch 2: More exotic magical and esoteric ob3ects.
Author: Lando ⊗ ⊙perator
"""
import sys, asyncio, json, re
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent.parent))
from ob3ect.auto import auto_design

EXOTIC_OB3ECTS = [
    # ── Chaos Magic ──
    {
        "desc": "Chaos magic servitor: an artificial spirit created by the magician from their own psychic energy, given a specific task and a finite lifespan. FSPLIT: the magician expels the servitor from their psyche, splitting one consciousness into the magician's waking awareness and the servitor's autonomous mission-awareness. FFUSE: when the servitor completes its task or its lifespan expires, it is reabsorbed — the magician's psyche reconstitutes with the servitor's experience integrated. VINIT: the magician before any creation. TANCH: the servitor's sigil as its life-boundary. AFWD: servitor dispatched to its task. AREV: servitor recalled for absorption. ENGAGR: the servitor is simultaneously part of the magician (same psychic substance) and independent (has its own apparent agency).",
        "domain": "magical",
        "scope": "local",
    },
    {
        "desc": "Chaos magic shoal: a sigil shoaling technique where multiple sigils are fired simultaneously into the unconscious. FSPLIT: the magician compresses multiple intentions into abstract sigils, splitting the unified desire-space into individual glyph-nodes. FFUSE: simultaneous firing (gnostic release) reconstitutes all intentions as a single shoal — they swim together into manifestation. VINIT: undifferentiated desire before sigilization. TANCH: the gnostic peak (the moment of firing). AFWD: individual sigil creation. AREV: forgetting each sigil. ENGAGR: a sigil that simultaneously means everything (its full intention) and nothing (abstract squiggle).",
        "domain": "magical",
        "scope": "local",
    },
    # ── Necromantic ──
    {
        "desc": "Necromantic bone oracle: casting ancestral bones, teeth, and grave-earth tokens for divination with the dead. FSPLIT: the bones are cast onto the ancestor cloth, splitting the question into positional meanings — skull fragment=ancestor's voice, tooth=warning, finger bone=direction, grave-earth=the answer lies buried. FFUSE: the necromancer reads all bones together, reconstituting the dead's answer from the scattered fragments. VINIT: the uncast bag of bones. TANCH: the ancestor cloth as the boundary between living and dead. AFWD: bone falling face-up (the dead speak clearly). AREV: bone falling face-down (the dead are silent). ENGAGR: a bone that lands on edge — the dead speak and are silent simultaneously.",
        "domain": "necromantic",
        "scope": "local",
    },
    # ── Astrological ──
    {
        "desc": "Natal chart ob3ect: the astrological birth chart — a snapshot of planetary positions at the moment of birth, forming the 12 houses, aspects, and sign placements. FSPLIT: the birth moment splits the unified sky into 12 houses (the mundane sphere) and the planets into their sign dignities and debilities. FFUSE: aspect integration reconstitutes the chart — the trines, squares, conjunctions, and oppositions weave the scattered placements into one coherent personality signature. VINIT: the sky before the birth moment. TANCH: the 360-degree circle of the ecliptic. AFWD: a planet in direct motion. AREV: a planet in retrograde. ENGAGR: a planet on the cusp — simultaneously in two houses or two signs.",
        "domain": "astrological",
        "scope": "mesoscale",
    },
    # ── Tantric / Mandala ──
    {
        "desc": "Tibetan sand mandala: a intricate geometric painting made of colored sand, ritually destroyed upon completion. FSPLIT: the monks construct the mandala by placing individual grains, splitting the unified void into the elaborate palace of the deity with its four gates, concentric rings, and central lotus. FFUSE: the destruction ceremony sweeps the mandala into a single pile of mixed sand — reconstituting the multiplicity back into undifferentiated matter, which is then poured into a river. VINIT: the empty platform. TANCH: the outer ring of the mandala — the boundary of the sacred cosmos. AFWD: adding sand (creation). AREV: sweeping sand (dissolution). ENGAGR: the mandala is simultaneously a permanent spiritual reality and a transient material object.",
        "domain": "tantric",
        "scope": "mesoscale",
    },
    # ── Gematria ──
    {
        "desc": "Gematria engine ob3ect: the Hebrew letter-number correspondence where each letter has a numerical value, and words with equal values share a mystical connection. FSPLIT: a word is decomposed into its constituent letters, splitting unity into numerical values (e.g., Chai = Chet(8) + Yod(10) = 18). FFUSE: the numerical sum reconstitutes the word's essence, and words sharing the same sum (e.g., Chai=18 and Echad(One)=13... wait, finding a genuine pair requires same gematria). The genuine pair: Aleph(1)+Mem(40)+Tav(400)=441 = Emet (Truth), and the same sum 441 is also the square of 21 which is Eheyeh — Truth and Being share a numerical identity. ENGAGR: a word that has two different gematria values depending on whether final letters are counted — simultaneously one number and another.",
        "domain": "mystical",
        "scope": "local",
    },
    # ── Sufi ──
    {
        "desc": "Sufi dhikr ob3ect: the ritual remembrance chant where the name of God is repeated on the breath in a cyclic rhythm. FSPLIT: the dhikr splits the practitioner's consciousness into the outer self (the chanter, the body breathing) and the inner self (the heart where the Name resonates silently). FFUSE: when the dhikr deepens into fana (annihilation), the two selves reconstitute as one — the chanter disappears and only the Chanted remains. VINIT: silence before the first utterance. TANCH: the cycle of one complete breath (in and out). AFWD: the outward breath carrying the Name. AREV: the inward breath drawing the Name back into the heart. ENGAGR: the station of baqa after fana — the mystic is simultaneously annihilated in God and present in the world.",
        "domain": "mystical",
        "scope": "local",
    },
    # ── Shamanic ──
    {
        "desc": "Shamanic journey drum: the frame drum used to enter trance states, its steady beat carrying the shaman to the lower, middle, or upper worlds. FSPLIT: the drumbeat splits the shaman's consciousness — the body remains in the ritual space while the soul travels to the spirit realm. FFUSE: the callback beat (a distinct rhythm shift) reconstitutes the shaman — soul returns to body with the healing, vision, or power animal. VINIT: silence before the first drumbeat. TANCH: the drum's rim — the boundary circle. AFWD: the beat that propels the soul outward. AREV: the callback beat that draws the soul home. ENGAGR: the shaman is simultaneously in the ritual tent (observers see the body) and in the spirit world (the soul acts there).",
        "domain": "shamanic",
        "scope": "local",
    },
    # ── Vodou ──
    {
        "desc": "Vodou vèvè ob3ect: the ritual ground drawing made with cornmeal or powder that calls the lwa (spirits) to possess the ceremony. FSPLIT: the drawing of the vèvè splits the mundane ground into sacred space — each line and symbol is a letter in a spiritual alphabet calling a specific lwa. FFUSE: when the lwa arrives (possession), the vèvè's scattered symbols reconstitute as a living presence — the drawing becomes the spirit. VINIT: the unswept, unconsecrated ground. TANCH: the outer border of the vèvè. AFWD: a line drawn outward (invitation). AREV: a line erased or scattered (dismissal). ENGAGR: the possessed person is simultaneously themselves (their body) and the lwa (their consciousness displaced) — the paradox of mounted possession.",
        "domain": "ritual",
        "scope": "local",
    },
    # ── Crystal ──
    {
        "desc": "Crystal grid lattice ob3ect: sacred geometry arrangement of crystals, each placed at a node of a geometric pattern (flower of life, platonic solid, or spiral) to amplify and direct subtle energy. FSPLIT: the central intention stone is activated, splitting its unified purpose through the lattice along geometric pathways to each peripheral crystal. FFUSE: the peripheral crystals reflect the energy back to the center, reconstituting the original intention now amplified by resonance. VINIT: the empty geometric template. TANCH: the outer boundary of the grid. AFWD: energy flowing from center to periphery. AREV: energy returning from periphery to center. ENGAGR: a crystal that is simultaneously a receiver (passive) and transmitter (active) — the quartz oscillator paradox.",
        "domain": "magical",
        "scope": "local",
    },
    # ── Pendulum ──
    {
        "desc": "Pendulum dowsing ob3ect: a weighted pendulum suspended from a chain, used to answer yes/no questions through unconscious micromovements. FSPLIT: the dowser asks a question, splitting their own unconscious knowledge into directional signals — the pendulum's swing encodes what the conscious mind cannot access. FFUSE: the dowser interprets the swing pattern, reconstituting the unconscious signal into conscious answer. VINIT: the still pendulum. TANCH: the full arc of possible swing. AFWD: clockwise swing (yes/affirmation). AREV: counterclockwise swing (no/negation). ENGAGR: the pendulum oscillates in a straight line that is simultaneously clockwise and counterclockwise when viewed from opposite sides — the neutral/ambiguous answer.",
        "domain": "divinatory",
        "scope": "local",
    },
    # ── Tasseography ──
    {
        "desc": "Tasseography ob3ect: tea leaf reading — loose tea leaves swirled in a cup, then inverted onto a saucer, leaving patterns on the cup walls. FSPLIT: the inverting of the cup splits the wet leaves into scattered clusters and trails across the cup's interior surface. FFUSE: the reader synthesizes the scattered leaf formations into a coherent narrative — the rim=present, middle=near future, bottom=distant future. VINIT: the empty cup. TANCH: the cup's rim as boundary. AFWD: a leaf cluster near the rim (imminent event). AREV: a leaf cluster at the bottom (distant, delayed). ENGAGR: a leaf formation that can be read as two contradictory symbols simultaneously (e.g., a bird and a snake from the same cluster).",
        "domain": "divinatory",
        "scope": "local",
    },
]


async def generate_all():
    results = []
    for i, spec in enumerate(EXOTIC_OB3ECTS):
        slug = re.sub(r'[^a-z0-9]+', '_', spec["desc"].split(":")[0].strip().lower())[:40]
        print(f"\n{'='*60}")
        print(f"[{i+1}/{len(EXOTIC_OB3ECTS)}] {slug}")
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
            print(f"  SAVED: {json_path}")
            results.append({"slug": slug, "verdict": art.split_fuse_report.frobenius_verdict, "valid": art.is_valid_ob3ect})
        except Exception as e:
            print(f"  FAILED: {e}")
            results.append({"slug": slug, "verdict": "ERROR", "error": str(e)})
    print(f"\n{'='*60}")
    print("BATCH 2 SUMMARY")
    print(f"{'='*60}")
    for r in results:
        status = "✅" if r.get("valid") else "❌"
        print(f"  {status} {r['slug']}: {r['verdict']}")

asyncio.run(generate_all())
