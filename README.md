# codexup

Container for isolated [Codex](https://openai.com/codex/) development.

## Setup

Build the image:

```bash
make
```

Make sure `codexup` is in your path:

```bash
export PATH="$PATH:path/to/the/checkout"
```

Make sure you set `CODEXUP_HOME_DIR` (maybe in your `.profile` or `.bashrc` file):

```bash
mkdir -p "$HOME/.codexup/home"
export CODEXUP_HOME_DIR="$HOME/.codexup/home"
```

## Running

Run `codexup` on your project to enter the `bash` prompt:

```bash
codexup path/to/my/project
```

Run `codex` to begin using Codex:

```bash
codex
```

## Customized Container

You can extend this container and install additional tools relevant to your project. Here's an example `Dockerfile`:

```dockerfile
FROM localhost/codexup:latest

COPY my_script.sh /usr/local/bin/my_script.sh
```

If you tag your custom container as `myproject-codex` you can tell `codexup` to use the custom image by creating a `.codexup` file in the root of your project and setting `CODEXUP_CONTAINER_IMAGE`:

```bash
CODEXUP_CONTAINER_IMAGE=localhost/myproject-codex:latest
```
