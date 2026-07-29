# Public reference-data provenance

## Canonical public input

The deterministic public reproduction process does not depend on a mutable
live market-data endpoint.

It reconstructs the canonical daily BTC return series from the committed
`buy_and_hold_equity` curve contained in:

`artifacts/latest/baseline_daily_curves.csv`

The first observation accounts for the documented initial movement from cash
and the 25-basis-point transaction cost. Subsequent observations are recovered
from consecutive buy-and-hold equity ratios.

The source file is protected by the release manifest and SHA-256 checksums.

## Purpose

This process verifies that:

- the published public curves are internally consistent;
- the benchmark source code reproduces the committed public results;
- execution lag, turnover, costs and metrics are applied consistently;
- future code or dependency changes cannot silently alter the release.

## Limitation

The public replay validates the benchmark computation and committed evaluation
surface. It is not an independent audit of the upstream market-data vendor or
of the proprietary Nostra evaluation trace.
