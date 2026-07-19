# homebrew-jonline

Homebrew tap for [Jonline](https://github.com/jonlatane/jonline).

```
brew install jonlatane/jonline/jonline
```

This installs the `jonline` server binary and all its bundled web frontends
(Tamagui, Elm) and support binaries into `/opt/homebrew/etc/jonline`, plus a
thin `/opt/homebrew/bin/jonline` wrapper script that runs it from there.

`Formula/jonline.rb` is generated and pushed automatically by the
[Server CI/CD workflow](https://github.com/jonlatane/jonline/actions/workflows/server_ci_cd.yml)
in the main `jonline` repo on every release to `main`. Don't hand-edit it —
changes will be overwritten on the next release.

Currently supports **Apple Silicon (arm64) only**.
