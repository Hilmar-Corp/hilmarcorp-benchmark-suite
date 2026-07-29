# Software bill of materials

A CycloneDX JSON dependency SBOM is generated from the exact controlled Python
3.13 constraint set.

The SBOM is attached to each formal GitHub Release rather than committed to the
Git tree, because CycloneDX metadata may contain generation-specific fields.

The canonical dependency set is committed in:

`requirements/constraints-py313.txt`

Regeneration:

    pip-audit \
      -r requirements/constraints-py313.txt \
      --format cyclonedx-json \
      --output sbom.cdx.json
