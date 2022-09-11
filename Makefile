PYTHON_BIN ?= poetry run python

format: isort black

black:
	$(PYTHON_BIN) -m black --exclude '/(\.git|\.hg|\.mypy_cache|\.nox|\.tox|\.venv|_build|buck-out|build|dist|node_modules|webpack_bundles)/' .

isort:
	$(PYTHON_BIN) -m isort src doc
