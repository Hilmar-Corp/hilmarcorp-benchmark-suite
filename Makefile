.PHONY: install format lint test test-fast coverage audit example qa

install:
	python -m pip install -e ".[dev,hmm]"

format:
	python -m ruff format .
	python -m ruff check . --fix

lint:
	python -m ruff check .
	python -m ruff format --check .

test:
	PYTHONPATH=src python -m pytest

test-fast:
	PYTHONPATH=src python -m pytest -m "not slow"

coverage:
	PYTHONPATH=src python -m pytest --cov-report=term-missing

audit:
	python tools/audit_public_repository.py

example:
	PYTHONPATH=src python examples/run_synthetic_example.py

qa: lint test audit
