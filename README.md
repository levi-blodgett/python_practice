# Python Test Env

[![Python 3.9](https://img.shields.io/badge/python-3.9-blue.svg?labelColor=yellow)](https://www.python.org/downloads/release/python-390/)
[![Imports: isort](https://img.shields.io/badge/%20imports-isort-%231674b1?style=flat&labelColor=orange)](https://pycqa.github.io/isort/)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Code style: pylama](https://img.shields.io/badge/code%20style-pylama-orange)](https://github.com/klen/pylama)

This project sets up a Python Dev Env.

## Prerequisites

- Python 3.9 (py version I used, YMMV)
- M1 Pro (local env I used, YMMV)
- [Zen of Python](https://peps.python.org/pep-0020/)

## Quick Start

```bash
make setup-venv
```

## Setting Up the Environment

### Virtual Environment

The project uses a Python virtual environment to manage Python dependencies.

To set up and activate the virtual environment:

```bash
make setup-venv
```

This command creates a virtual environment and installs the necessary dependencies from `requirements.txt`.

## Using the Makefile

The Makefile includes the following commands:

- **setup-venv**: Build the python virtual environment.
- **clean**: Tears down env, including venv.
- **lint**: Lint Python Code.
