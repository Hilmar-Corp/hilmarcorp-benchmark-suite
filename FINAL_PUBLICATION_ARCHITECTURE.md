# Final publication architecture

## GitHub repository

The public GitHub repository contains:

- the benchmark and accounting engine;
- public reference strategies;
- tests and anti-look-ahead controls;
- aggregate performance metrics;
- daily curves for public baselines;
- versioned controlled artifacts;
- cryptographic manifests;
- dependency constraints and governance documentation.

Public reference strategies are code-reproducible and replay-verifiable.

Nostra AI is artifact-verified rather than open-source.

The GitHub repository contains no Nostra time series or execution trace.

## Exposure conventions

Public benchmarks use exposure between 0% and 100%.

The proprietary Nostra evaluation uses a governed exposure range from -10% to
+100%.

## HilmarCorp website

The website may display daily Nostra and benchmark equity curves through a
separately generated artifact.

The website artifact applies a minimum fourteen-day publication delay and
contains equity observations only. It contains no positions, explicit daily
returns, turnover, transaction costs, probabilities or features.

## Private environment

The private environment retains the complete Nostra evaluation trace, model
logic, positions, returns, costs, turnover, research data and upstream source
evidence.

## Performance convention

CAGR is calculated as:

`final_equity ** (365 / observations) - 1`
