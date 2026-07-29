# Benchmark methodology

The benchmark suite evaluates daily BTC exposure strategies under one common
economic and accounting protocol.

## Common conventions

- Daily evaluation frequency.
- Long-only exposure bounded between 0 and 100%.
- Initial exposure equal to zero.
- Raw turnover equal to the absolute daily exposure change.
- Transaction costs equal to 25 basis points per unit of turnover.
- Dynamic strategy decisions shifted by one observation before application.
- Annualization factor equal to 365.
- CAGR calculated as `final_equity ** (365 / observations) - 1`.

## Public baselines

The public package implements buy and hold, fixed exposure, time-series
momentum, moving-average crossover, volatility targeting and a price-only
walk-forward hidden Markov model.

The source code and daily evaluation curves of these public reference
strategies are reproducible from the repository and a matching market-return
series.

## Nostra AI

Nostra AI is evaluated using the same daily accounting conventions, but its
model logic and execution trace remain proprietary.

The GitHub repository publishes aggregate metrics and a cryptographic
commitment to the retained private evaluation artifact. It publishes no
Nostra time series, position, return, turnover, cost, probability, feature or
model parameter.

A separate website publication process may render delayed daily equity
observations. That website artifact is not distributed through this GitHub
repository and applies a minimum fourteen-day publication delay.
