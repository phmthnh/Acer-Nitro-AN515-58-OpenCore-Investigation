"""Verify a local untouched snapshot; never writes to a drive."""
import argparse
import hashlib
import json
from pathlib import Path

p = argparse.ArgumentParser()
p.add_argument("audit", type=Path)
a = p.parse_args()
manifest = json.loads((a.audit / "manifest.json").read_text(encoding="utf8"))
root = (a.audit / "snapshot").resolve()
for rel, expected in manifest["files"].items():
    path = (root / rel).resolve()
    assert path.is_relative_to(root), rel
    assert path.stat().st_size == expected["size"], rel
    with path.open("rb") as f:
        assert hashlib.file_digest(f, "sha256").hexdigest() == expected["sha256"], rel
print(f"Verified {len(manifest['files'])} files; no files changed.")
