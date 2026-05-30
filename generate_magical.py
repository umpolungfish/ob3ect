"""
Batch generation of magical and esoteric ob3ects.
Author: Lando ⊗ ⊙perator
"""
import sys, asyncio, json, re
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent.parent))
from ob3ect.auto import auto_design
from ob3ect.core import Ob3ectArtifact

MAGICAL_OB3ECTS = [
    # ── Divinatory ──
    {
        "desc": "Scrying mirror: a black obsidian mirror used for remote viewing and spirit communication. FSPLIT: the scryer's gaze enters the mirror, splitting perception from ordinary reality into the visionary realm. FFUSE: the visions, symbols, and messages coalesce into a coherent revelation, reconstituting the scryer's understanding. VINIT: empty dark mirror before first use. TANCH: the mirror's rim — the boundary between worlds. AFWD: vision emerges. AREV: vision recedes. ENGAGR: seeing and not-seeing simultaneously — the mirror shows truth and illusion at once.",
        "domain": "divinatory",
        "scope": "local",
    },
    {
        "desc": "Geomantic shield: 16 figures formed from four lines of single or double dots, cast by marking random lines in earth or sand. FSPLIT: the random marking of dots splits the querent's unconscious intention into four Mothers, which generate four Daughters, then four Nephews. FFUSE: the Judge and two Witnesses reconstitute the original question into a final verdict. VINIT: untouched sand. TANCH: the complete shield of 16 figures. AREV: the Daughters derived by reversal of Mothers. ENGAGR: Populus and Via — the figures of pure gatheredness and pure dispersal, simultaneously stationary and moving.",
        "domain": "divinatory",
        "scope": "local",
    },
    # ── Alchemical ──
    {
        "desc": "Hermetic vessel (vas hermeticum): the sealed flask of alchemical transformation, where the prima materia undergoes nigredo, albedo, citrinitas, and rubedo. FSPLIT: the sealed vessel splits the prima materia into volatile (spirit that rises) and fixed (body that remains). FFUSE: circulation reunites the volatile and fixed as the Stone. VINIT: empty vessel. TANCH: the hermetic seal. AFWD: sublimation (ascent). AREV: condensation (descent). ENGAGR: the ouroboros stage — the serpent eating its tail where beginning and end are simultaneous.",
        "domain": "alchemical",
        "scope": "local",
    },
    {
        "desc": "Philosopher's stone (lapis philosophorum): the completed alchemical agent that transmutes base metals to gold and confers immortality. FSPLIT: the stone projects its virtue onto base metal, splitting the metal's nature into its pure essence and its dross. FFUSE: the pure essence reconstitutes as gold — the original metal perfected. VINIT: undifferentiated prima materia. TANCH: the stone itself as terminal object. AFWD: transmutation. AREV: the stone's self-regeneration — it is not consumed. ENGAGR: the stone is simultaneously a powder (physical) and a spirit (non-physical) — it is and is not material.",
        "domain": "alchemical",
        "scope": "mesoscale",
    },
    # ── Magical ──
    {
        "desc": "Goetic seal invocation: the 72 seals of the Ars Goetia, each a sigil binding a specific spirit. FSPLIT: the magician inscribes the seal, splitting the spirit's essence from the void into constrained manifestation within the triangle of art. FFUSE: the license to depart reconstitutes the spirit back into the void — the seal is broken. VINIT: blank parchment. TANCH: the protective circle. AFWD: conjuration (spirit appears). AREV: license to depart (spirit dissipates). ENGAGR: the spirit is simultaneously bound (in the triangle) and free (its nature cannot be constrained) — the paradox of invocation.",
        "domain": "magical",
        "scope": "local",
    },
    {
        "desc": "Witch's familiar: a spirit-animal bond between practitioner and a tutelary entity. FSPLIT: the familiar departs the witch's body, splitting awareness into the witch's perspective and the familiar's remote perception. FFUSE: the familiar returns, merging the two streams of experience into one enriched awareness. VINIT: the unbonded practitioner. TANCH: the bond itself as the container. AFWD: the familiar ventures forth. AREV: the familiar returns home. ENGAGR: the familiar is simultaneously an extension of the witch and an independent being — the paradox of the familiar bond.",
        "domain": "magical",
        "scope": "local",
    },
    # ── Oneiric ──
    {
        "desc": "Dream incubation temple: an oneiric chamber where the sleeper receives oracular dreams. FSPLIT: sleep splits consciousness into the waking self (body on the temple floor) and the dream self (wandering the oneiric realm). FFUSE: awakening reconstitutes the two selves — the dream memory integrates into waking knowledge. VINIT: the empty temple before the sleeper enters. TANCH: the temple walls — the boundary of incubation. AFWD: falling asleep (descent into dream). AREV: waking (ascent from dream). ENGAGR: lucid dreaming — simultaneously awake and asleep, the dreamer knows they dream.",
        "domain": "oneiric",
        "scope": "local",
    },
    {
        "desc": "Ouroboros ring: the serpent eating its own tail, the most ancient alchemical and mystical symbol. FSPLIT: the serpent bites its tail, splitting the circle into head (consumer) and tail (consumed). FFUSE: the swallowing reconstitutes the circle — head and tail are identical, the serpent feeds on itself and is fed by itself in perfect closure. VINIT: the unformed circle. TANCH: the completed ring. AFWD: the head advances. AREV: the tail retreats. ENGAGR: the serpent is simultaneously devouring and being devoured — the paradox of self-consumption. This is THE ob3ect of self-reference itself.",
        "domain": "mystical",
        "scope": "mesoscale",
    },
    # ── Ritual ──
    {
        "desc": "Pentagram ritual (Lesser Banishing Ritual of the Pentagram): the ceremonial magic ritual that establishes sacred space. FSPLIT: the magician draws the pentagrams in the four quarters, splitting mundane space into consecrated ritual space with four elemental guardians. FFUSE: the closing reunites the sacred space with mundane space — the circle is opened, the guardians are released, but the magician retains the charge. VINIT: profane space before the ritual. TANCH: the magic circle. AFWD: invoking pentagram (spirit drawn down). AREV: banishing pentagram (spirit sent away). ENGAGR: the magician stands at the intersection of all four quarters — simultaneously in all elements and none.",
        "domain": "ritual",
        "scope": "local",
    },
    {
        "desc": "Witching hour liminal time-ob3ect: the threshold moment (3 AM, Samhain, solstices) when the veil between worlds thins. FSPLIT: the liminal moment splits time into the ordinary flow and the timeless interval where past/present/future coexist. FFUSE: the moment passes, reconstituting ordinary time — but with something carried across the threshold. VINIT: time before the thinning. TANCH: the clock striking the hour. AFWD: the veil opens. AREV: the veil closes. ENGAGR: the moment is simultaneously within time (it has a clock position) and outside time (it touches eternity).",
        "domain": "mystical",
        "scope": "local",
    },
    # ── Ceremonial ──
    {
        "desc": "Enochian tablet: the elemental tablets of Dr. John Dee's Enochian magic, 12x13 grids of letters encoding angelic names and powers. FSPLIT: the tablet is read by scanning rows, columns, and diagonals, splitting the unified tablet surface into individual angelic names. FFUSE: the names are called in their hierarchical order, reconstituting the tablet's full authority. VINIT: blank wax tablet. TANCH: the outer border of the tablet (the 12x13 grid). AFWD: reading a name forward. AREV: reading a name in reverse (the angels of wrath). ENGAGR: the black cross — the center of the tablet where all directions meet and a name reads the same in all directions.",
        "domain": "ceremonial",
        "scope": "mesoscale",
    },
    {
        "desc": "Hermetic memory palace: the ars memoria where a practitioner constructs an imaginary building and places vivid images in its rooms to encode knowledge. FSPLIT: the orator walks through the palace, splitting a unified argument into loci — each room holds one image encoding one point. FFUSE: walking the palace in reverse order reconstitutes the loci back into the complete argument for delivery. VINIT: the empty, unbuilt palace. TANCH: the palace walls — the boundary containing all memory. AFWD: walking forward (encoding). AREV: walking backward (retrieval). ENGAGR: the memory image is simultaneously the thing itself (vivid presence) and a symbol for something else — the paradox of mnemonic representation.",
        "domain": "mystical",
        "scope": "local",
    },
]


async def generate_all():
    results = []
    for i, spec in enumerate(MAGICAL_OB3ECTS):
        slug = re.sub(r'[^a-z0-9]+', '_', spec["desc"].split(":")[0].strip().lower())[:40]
        print(f"\n{'='*60}")
        print(f"[{i+1}/{len(MAGICAL_OB3ECTS)}] {slug}")
        print(f"{'='*60}")
        try:
            art = await auto_design(
                spec["desc"],
                domain_type=spec["domain"],
                scope=spec["scope"],
                max_retries=3,
            )
            # Save to disk
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
    print("SUMMARY")
    print(f"{'='*60}")
    for r in results:
        status = "✅" if r.get("valid") else "❌"
        print(f"  {status} {r['slug']}: {r['verdict']}")

asyncio.run(generate_all())
