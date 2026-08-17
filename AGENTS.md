# Homebrew tap engineering context

This repository publishes Homebrew formulae only. The verified-version source
repository owns the `vv` command, website, tests, manual, completions, version,
and release tags.

For every new `vv` release:

1. Confirm the matching source tag exists.
2. Update `Formula/vv.rb` with the tag URL and its SHA-256.
3. Update the formula's installed file list when the source layout changes.
4. Update the formula test's expected `vv --verified-version` output.
5. Require the macOS formula workflow to pass before reporting the Homebrew
   release complete.

The formula installs only the command, manual, and shell completions. Do not
copy website files or recreate CLI compatibility logic in this repository.

Use ordinary hyphens, not em dashes.
