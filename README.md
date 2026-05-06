# copper-rel-canary-yard

`copper-rel-canary-yard` explores reliability with a small Solidity codebase and local fixtures. The technical goal is to develop a Solidity command-oriented project for canary scenarios with framed sample traffic, bounds and ordering tests, and bounded memory input sets.

## Why This Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Copper Rel Canary Yard Review Notes

The first comparison I would make is `recovery gap` against `budget pressure` because it shows where the rule is most opinionated.

## Capabilities

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/copper-rel-canary-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `recovery gap` and `budget pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Solidity checks add a pure review lens and Foundry coverage.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
