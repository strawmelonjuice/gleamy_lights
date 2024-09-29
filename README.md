# gleamy_lights

[![Package Version](https://img.shields.io/hexpm/v/gleamy_lights)](https://hex.pm/packages/gleamy_lights)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/gleamy_lights/)

Colored terminal output for Gleam.

```sh
gleam add gleamy_lights@2
```

```gleam
import gleam/io
import gleamy_lights
import gleamy_lights/premixed.{bg_green, text_orange}
import gleamy_lights/premixed/gleam_colours

pub fn main() {
  io.println(
    text_orange("Hello, ")
    <> gleamy_lights.by_hexcolour_bg("world", "#aa88ff")
    <> bg_green("!"),
  )
  io.println(
    "This is a "
    <> gleam_colours.bg_underwater_blue(gleam_colours.text_faff_pink(
      "gleamy",
    ))
    <> " world.",
  )
}
```

Further documentation can be found at <https://hexdocs.pm/gleamy_lights>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
```
