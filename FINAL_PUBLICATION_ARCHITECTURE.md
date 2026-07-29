# Final publication architecture

## GitHub repository

The public GitHub repository contains the benchmark engine, performance
metrics, public reference strategies, tests, methodology and controlled
release artifacts.

Public reference strategies are code-reproducible.

Nostra AI is artifact-verified through aggregate metrics and a SHA-256
commitment to the retained private evaluation artifact.

The GitHub repository contains no Nostra time series.

## HilmarCorp website

The website may display daily Nostra and benchmark equity curves through a
separate data artifact.

The chart remains daily because Nostra is a daily exposure product.

The website artifact applies a minimum fourteen-day publication delay and
contains equity observations only. It contains no positions, explicit daily
returns, turnover, transaction costs, probabilities or features.

## Private environment

The private environment retains the complete daily evaluation trace, model
logic, positions, returns, costs, turnover and research data.

## Performance convention

CAGR is calculated as:

`final_equity ** (365 / observations) - 1`

All aggregate metrics are calculated from the complete daily evaluation
trace.
