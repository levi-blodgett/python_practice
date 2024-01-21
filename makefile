# Python virtual environment settings
VENV_ROOT=.venv
VENV_BIN=$(VENV_ROOT)/bin
VENV_ACTIVATE=$(VENV_BIN)/activate
PYTHON=python3
FLASK_APP=app.py
PYTHON_FOLDERS = static $(FLASK_APP)

$(VENV_ROOT):
	$(PYTHON) -m venv $(VENV_ROOT)

setup-venv: $(VENV_ROOT)
	$(VENV_BIN)/pip install -r requirements.txt

.PHONY: setup-venv

clean-venv:
	rm -rf $(VENV_ROOT)

clean: clean-venv

.PHONY: clean-venv clean

lint-pylama: $(VENV_ROOT)
	$(VENV_BIN)/pylama $(PYTHON_FOLDERS)

lint: $(VENV_ROOT)
	$(VENV_BIN)/isort -v --skip-gitignore $(PYTHON_FOLDERS)
	$(VENV_BIN)/black -v $(PYTHON_FOLDERS)
	$(MAKE) lint-pylama

.PHONY: lint-pylama lint

start: $(VENV_ROOT)
	$(VENV_BIN)/$(PYTHON) $(FLASK_APP)

.PHONY: start