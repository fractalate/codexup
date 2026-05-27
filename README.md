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

Make sure you set `CODEXUP_HOME_DIR`:

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
