# Python virtual environment settings
VENV_NAME=.venv
VENV_BIN=$(VENV_NAME)/bin
VENV_ACTIVATE=$(VENV_BIN)/activate
PYTHON=python3
PYTHON_FOLDERS = static app.py

$(VENV_NAME):
	$(PYTHON) -m venv $(VENV_NAME)

setup-venv: $(VENV_NAME)
	$(VENV_BIN)/pip install -U pip setuptools wheel
	$(VENV_BIN)/pip install -r requirements.txt

.PHONY: setup-venv

clean-venv:
	rm -rf $(VENV_NAME)

clean: clean-venv

.PHONY: clean-venv clean

lint-pylama: $(VENV_NAME)
	$(VENV_BIN)/pylama $(PYTHON_FOLDERS)

lint: $(VENV_NAME)
	$(VENV_BIN)/isort -v --skip-gitignore $(PYTHON_FOLDERS)
	$(VENV_BIN)/black -v $(PYTHON_FOLDERS)
	$(MAKE) lint-pylama

.PHONY: lint-pylama lint