# Change-control policy

## Non-material changes

Documentation corrections, formatting and non-functional refactoring require:

- passing CI;
- publication-boundary audit;
- review of the staged diff.

## Material benchmark changes

Changes to any of the following require a new versioned release:

- transaction-cost convention;
- execution lag;
- exposure bounds;
- annualization or CAGR formula;
- benchmark parameters;
- HMM specification;
- input reconstruction;
- release schemas;
- performance results.

## Proprietary boundary changes

Any change affecting Nostra disclosure requires an explicit review of:

- model-code exposure;
- features and parameters;
- probabilities;
- positions and returns;
- turnover and costs;
- daily equity publication;
- private paths and infrastructure;
- contractual and licensing scope.

## Repository controls

The default branch must remain protected against force-pushes and deletion.
Status checks are required before controlled changes are accepted.
