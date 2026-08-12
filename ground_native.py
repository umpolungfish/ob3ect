"""Ground the artifacts the native designer wrote.

`ask --ob3ect` computes the structural faces in Rust and writes a valid artifact,
but it never runs the imscription gate, so its JSON carries no 12-primitive tuple
and no grounding status while `auto.py`'s does. Two shapes for one kind of thing
is the drift this corpus keeps finding, so this closes the gap from the side that
is missing rather than by removing the field from the other.

The tuple is minted by the same guided gate `auto.py` uses — never hand-written.
"""
from __future__ import annotations
import asyncio, json, sys, pathlib

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent.parent))

from auto import _run_gated_imscription  # the same gate, not a second copy


async def ground(paths, provider, model):
    for d in paths:
        js = list(pathlib.Path(d).glob('*_ob3ect.json'))
        if not js:
            print(f"{d}: no artifact"); continue
        art = json.loads(js[0].read_text())
        if art.get('grounded_tuple'):
            print(f"{pathlib.Path(d).name}: already grounded"); continue
        desc = art.get('name') or pathlib.Path(d).name.replace('_', ' ')
        try:
            res = await _run_gated_imscription(desc, provider, model)
        except Exception as e:
            print(f"{pathlib.Path(d).name}: gate failed — {type(e).__name__}: {str(e)[:90]}")
            continue
        # to_notation is what auto.py stores — the twelve glyphs, nothing
        # attached. Storing the repr instead puts a Python object where the
        # notation belongs, which is what the first run of this script did.
        art['grounded_tuple'] = res.imscription.to_notation()
        art['grounding_status'] = res.grounding_status
        art['grounding_failed_primitives'] = list(res.failed_primitives or [])
        art['grounding_reasoning'] = res.reasoning
        js[0].write_text(json.dumps(art, ensure_ascii=False, indent=2))
        print(f"{pathlib.Path(d).name}: {res.grounding_status} {art['grounded_tuple']}")


if __name__ == '__main__':
    import os
    provider = os.environ.get('IG_PROVIDER') or 'deepseek'
    model = os.environ.get('IG_MODEL') or 'deepseek-v4-pro'
    asyncio.run(ground(sys.argv[1:], provider, model))
