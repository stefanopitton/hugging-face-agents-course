.PHONY: install format kernel start

venv = $(CURDIR)/.venv
kernel_name = agents-course

install:
	@echo "==================================================================="
	@echo 'Installing deps...'
	uv sync --all-packages
	@echo "Deps installed"
	@echo "==================================================================="

format:
	@echo "==================================================================="
	@echo 'Running formatting...'
	uv run ruff format .
	@echo "Completed formatting"
	@echo "==================================================================="

kernel:
	@echo "==================================================================="
	@echo 'Creating Jupyter kernel named $(kernel_name)...'
	@uv run ipython kernel install --user --env VIRTUAL_ENV $(venv) --name=$(kernel_name)
	@echo "Kernel created successfully"
	@echo "==================================================================="

start:
	@echo "==================================================================="
	@echo "Starting notebook..."
	@uv run jupyter-lab
