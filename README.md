# Hugging Face Agents Course

Personal repository for the Hugging Face
[Agents Course](https://huggingface.co/learn/agents-course). The repository
contains experiments based on the notebooks and packages distributed with the
associated course. Moreover, all the code is based on the updated versions of
the agentic frameworks providing the correct ways of defining agentic workflows.

## Requirements

To make the agents run, you need an Hugging Face account from which you can
[create a token](https://huggingface.co/settings/tokens), and enough credits on
your account to allow your agents to perform API calls.

Once you have the token, update the environment file:

```sh
mv .env-example .env
```

And add the token to the `HF_TOKEN` variable. If you want to experiment with
agents telemetry, you also need a key from [langfuse](https://langfuse.com/) and
from [SerpAPI](https://serpapi.com/).

## Usage

The project is based on the [uv](https://docs.astral.sh/uv/) package manager and
is organized in workspaces to manage different applications within a single
`uv.lock` file.

Install the dependencies for all the packages:

```sh
make install
```

### Notebooks

Create a specific IPython kernel for the project:

```sh
make kernel
```

Start the Jupyter Notebook:

```sh
make start
```

### Packages

You can execute a single package with

```sh
uv run --package <package-name> python <package-name>/app.py
```

If you prefer to use another package manager, you can generate the
`requirements.txt` file for each package with:

```sh
uv export --package <package-name> --no-hashes --no-dev --no-emit-project -o <package-name>/requirements.txt
```

You can also generate only direct dependencies with a bit of Python:

```sh
uv run python -c "import tomllib; print('\n'.join(tomllib.load(open('<package-name>/pyproject.toml','rb'))['project']['dependencies']))" > <package-name>/requirements.txt
```
