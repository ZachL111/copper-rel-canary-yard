# Copper Rel Canary Yard Walkthrough

This note is the quickest way to read the extra review model in `copper-rel-canary-yard`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | budget pressure | 93 | hold |
| stress | failure width | 168 | ship |
| edge | recovery gap | 196 | ship |
| recovery | runbook drift | 106 | watch |
| stale | budget pressure | 191 | ship |

Start with `edge` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`edge` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
