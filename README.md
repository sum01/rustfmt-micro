# Rustfmt-micro
This is a [rustfmt](https://github.com/rust-lang-nursery/rustfmt) plugin for the [Micro text-editor.](https://github.com/zyedidia/micro)

## Setup & Installation
1. Install [rustfmt](https://github.com/rust-lang-nursery/rustfmt)
2. Open your config's `settings.json` (located in `~/.config/micro/settings.json` on Linux), and add `https://raw.githubusercontent.com/sum01/rustfmt-micro/master/repo.json` to `pluginrepos`, like so:
  ```json
  "pluginrepos": [
    "https://raw.githubusercontent.com/sum01/rustfmt-micro/master/repo.json"
  ],
  ```
3. Run `plugin install rustfmt`
4. Restart Micro & it should work.

Note: if this plugin is added to the [official plugin channel](https://github.com/micro-editor/plugin-channel), you can skip step 2.

## Usage
Run `help rustfmt` after installation to bring up a help file while in Micro.
