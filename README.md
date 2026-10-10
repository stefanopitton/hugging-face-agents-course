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
