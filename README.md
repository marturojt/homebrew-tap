# homebrew-tap

Homebrew tap for two tools by [@marturojt](https://github.com/marturojt):

| Formula | What it is |
|---|---|
| [`termdoc`](https://termdoc.app) | A universal document viewer for the terminal: Markdown, JSON, YAML, TOML, XML, CSV, logs, source code and more. |
| [`dapctl`](https://dapctl.com) | TUI/CLI sync tool for HiFi Digital Audio Players. |

## Install

```sh
brew tap marturojt/tap
brew install termdoc
brew install dapctl
```

Or in one step: `brew install marturojt/tap/termdoc`.

## Update

```sh
brew upgrade termdoc dapctl
```

Both formulae install the project's prebuilt release binary. macOS gets a universal binary, and
Linux gets x86_64 and aarch64 builds.
