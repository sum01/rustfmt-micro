# Rustfmt plugin
This plugin requires the `rustfmt` executable to work.

## Usage
When saving an `.rs` file, the plugin will automatically run on the file & save any changes.

You can also manually run it with the `rustfmt` command.

Optional: you can `set rustfmt true` or `set rustfmt false` to enable/disable formatting on save.  
You can run `show rustfmt` to see the current enabled/disabled status.

## Keybinds
There are no default keybinds, but you can add one to your `bindings.json`, like so:
```
{
  "Alt-e": "rustfmt.rustfmt"
}
```
