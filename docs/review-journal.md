# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its reliability focus without claiming live deployment or external usage.

## Cases

- `baseline`: `budget pressure`, score 93, lane `hold`
- `stress`: `failure width`, score 168, lane `ship`
- `edge`: `recovery gap`, score 196, lane `ship`
- `recovery`: `runbook drift`, score 106, lane `watch`
- `stale`: `budget pressure`, score 191, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
