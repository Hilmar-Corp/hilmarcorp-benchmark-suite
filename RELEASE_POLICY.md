# Release policy

A controlled release must satisfy all of the following gates:

1. formatting and linting pass;
2. unit, property and anti-look-ahead tests pass;
3. branch-aware coverage remains at or above 90%;
4. the repository publication audit passes;
5. the release manifest and SHA-256 checks pass;
6. the public benchmark reproduction passes;
7. the dependency audit passes;
8. CodeQL completes successfully;
9. no Nostra time series or private execution field is distributed;
10. versioned artifacts are immutable after publication.

`artifacts/latest` represents the current controlled release.

Every formal release is also copied to:

`artifacts/releases/<version>`

A GitHub Release binds the versioned artifact, dependency constraints and SBOM
to a specific Git commit and tag.

The release tag is signed when a repository signing key is configured.
Otherwise, an annotated tag is used together with immutable commit identity,
SHA-256 checksums and GitHub Actions evidence.
