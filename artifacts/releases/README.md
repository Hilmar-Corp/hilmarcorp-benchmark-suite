# Versioned controlled releases

Each directory is immutable after its associated GitHub Release is published.

`v0.1.0` is the first institutionally hardened public benchmark release.

The mutable `artifacts/latest` directory may advance in future commits, while
a versioned directory must remain byte-identical to its published release.
