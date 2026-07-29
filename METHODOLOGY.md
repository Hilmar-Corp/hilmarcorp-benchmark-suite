# Benchmark methodology

The benchmark suite evaluates daily BTC exposure strategies under a common
economic and accounting protocol.

## Public benchmark conventions

Public reference strategies use:

- daily evaluation frequency;
- long-only exposure bounded between 0% and 100%;
- initial exposure equal to zero;
- raw turnover equal to the absolute daily exposure change;
- transaction costs equal to 25 basis points per unit of turnover;
- dynamic strategy decisions shifted by one observation before application;
- annualization factor equal to 365;
- CAGR equal to `final_equity ** (365 / observations) - 1`.

## Public baselines

The public package implements:

- buy and hold;
- fixed 50% exposure;
- time-series momentum over 30, 60, 90, 180 and 270 observations;
- a 50/200 moving-average crossover;
- volatility targeting over 14 and 30 observations;
- a price-only three-state Gaussian HMM evaluated walk-forward.

The public reference strategies are reproducible from the committed release
artifact and the public source code.

## Nostra AI

Nostra AI is evaluated under the same daily cost, turnover, execution-lag and
annualization conventions.

Its governed exposure range is distinct from the public long-only baselines:

- minimum governed exposure: -10%;
- maximum governed exposure: +100%.

The GitHub repository publishes aggregate Nostra metrics and a cryptographic
commitment to the retained private evaluation artifact.

It publishes no Nostra model logic, feature, parameter, probability, position,
daily return, daily equity series, turnover or transaction-cost trace.

A separate website process may display delayed daily equity observations. That
website artifact is not distributed through GitHub and applies a minimum
fourteen-day publication delay.
