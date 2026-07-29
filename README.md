# HilmarCorp Benchmark Suite

Transparent Python utilities for evaluating daily allocation benchmarks with
explicit execution lags and transaction-cost accounting.

The repository contains generic research infrastructure only. It contains no
proprietary model logic, private dataset, production configuration, historical
signal, position trace or internal research artifact.

## Benchmarks included

- Buy and hold
- Constant 50% allocation
- 90-day time-series momentum
- 50/200-day moving-average crossover
- 30-day volatility targeting
- Three-state Gaussian HMM evaluated walk-forward

## Core convention

A dynamic strategy calculates its decision using information available through
date t. The decision is shifted by one daily observation before being applied
to returns.

Transaction costs are charged on absolute changes in the applied position,
including the initial move from cash.

## Installation

    python -m pip install -e ".[dev,hmm]"

## Synthetic smoke test

    PYTHONPATH=src python examples/run_synthetic_example.py

The synthetic example verifies that each code path executes and that the
accounting identities hold. Its numerical outputs have no empirical,
comparative or performance significance.

## Controls

    PYTHONPATH=src python -m pytest
    python tools/audit_public_repository.py
    python -m ruff check .
    python -m ruff format --check .

## Scope

This repository contains benchmark and validation infrastructure. It does not
reproduce any proprietary HilmarCorp model and does not constitute investment
advice.

## Reproducibility and proprietary boundary

The public benchmark implementations are reproducible from this repository.
Nostra AI itself is not open-source. Its features, parameters, probabilities
and position series remain proprietary.

Public releases distinguish:

- `code-reproducible` public baselines;
- `artifact-verified` Nostra aggregate results.

See `METHODOLOGY.md`, `REPRODUCIBILITY.md` and
`PROPRIETARY_BOUNDARY.md`.

## Final publication architecture

The public repository contains the evaluation framework and reproducible
reference strategies. It does not contain the Nostra model, execution trace
or any Nostra time series.

Nostra aggregate metrics are artifact-verified through a SHA-256 commitment.

A separate website artifact may display daily equity observations with a
minimum fourteen-day delay. That artifact is not distributed through this
repository and contains no positions, explicit daily returns, turnover,
costs, probabilities or features.

See `FINAL_PUBLICATION_ARCHITECTURE.md`.

## Institutional reproducibility

Public reference strategies can be replayed from a clean clone using:

    make reproduce

The controlled Python 3.13 dependency environment is recorded in
`requirements/constraints-py313.txt`.

Public benchmarks use exposure between 0% and 100%. The proprietary Nostra
evaluation uses a governed range between -10% and +100%.

Formal releases include versioned artifacts, SHA-256 manifests, dependency
auditing, a CycloneDX SBOM and GitHub Actions evidence.

See `DATA_PROVENANCE.md`, `RELEASE_POLICY.md`, `CHANGE_CONTROL.md` and
`SUPPLY_CHAIN_SECURITY.md`.

## Licensing

The software source code, tests and technical documentation are licensed
under Apache-2.0.

Controlled performance files under `artifacts/latest` are not licensed under
Apache-2.0. They remain © HilmarCorp, all rights reserved, and are published
for inspection and verification only.

Nostra AI model logic and its private execution trace are not included in
this repository. See `NOTICE` and `artifacts/LICENSE.md`.
