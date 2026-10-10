# Hugging Face Agents Course

Personal repository for the Hugging Face
[Agents Course](https://huggingface.co/learn/agents-course). The repository
contains experiments based on the notebooks distributed with the associated
course.

## Requirements

To execute the notebooks you need an Hugging Face account from which you can
[create a token](https://huggingface.co/settings/tokens) and enough credits on
your account to allow your agents to perform API calls. Once you have your
token, update the environment file:

```sh
mv .env-example .env
```

And add the token to the `HF_TOKEN` variable.

## Usage

The project is based on the [uv](https://docs.astral.sh/uv/) package manager.
Install the dependencies:

```sh
make install
```

Create a specific IPython kernel for the project:

```sh
make kernel
```

Start the Jupyter Notebook:

```sh
make start
```

requirements: uv export --package first-agent --no-hashes --no-dev
--no-emit-project -o first-agent/requirements.txt

uv run --package first-agent python first-agent/app.py

uv add --package second-agent <some-lib>

## Workspaces

The project uses workspaces to manage different applications within a single
`uv.lock` file.

To add a dependency to one of the workspace members:

```sh
uv add --package <package-name> <dep-name>
```

Generate only direct dependencies:

```sh
uv run python -c "import tomllib; print('\n'.join(tomllib.load(open('<package-name>/pyproject.toml','rb'))['project']['dependencies']))" > <package-name>/requirements.txt
```

## First Agent

From the project root, execute:

```sh
uv run --package first-agent python first-agent/app.py
```

This command will expose a front end to interact with the agent at the port
`7860`.
