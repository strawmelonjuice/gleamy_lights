# gleamy_lights

[![Package Version](https://img.shields.io/hexpm/v/gleamy_lights)](https://hex.pm/packages/gleamy_lights)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/gleamy_lights/)

Colored terminal output for Gleam.

```sh
gleam add gleamy_lights@2
```

```gleam
import gleamy_lights.{red, green, blue}
import gleam/io

pub fn main() {
  io.println(red("Hello, ") <> green("world") <> blue("!"))
}
```

Further documentation can be found at <https://hexdocs.pm/gleamy_lights>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
```
