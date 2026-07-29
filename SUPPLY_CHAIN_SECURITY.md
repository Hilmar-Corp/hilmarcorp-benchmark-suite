# Supply-chain security

The repository applies the following controls:

- GitHub Actions are pinned to immutable commit SHAs;
- the controlled Python 3.13 environment is exactly constrained;
- dependencies are audited with `pip-audit`;
- a CycloneDX dependency SBOM is generated for each formal release;
- CodeQL performs static security analysis;
- Dependabot monitors Python and GitHub Actions dependencies;
- release files are protected by SHA-256 manifests;
- production credentials, endpoints and serialized proprietary models are
  forbidden from the public repository.

Compatibility testing remains broader than the exact reproduction environment:
Python 3.11, 3.12 and 3.13 are tested on Ubuntu, with Python 3.13 also tested
on macOS.
