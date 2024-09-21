# pow

[![Package Version](https://img.shields.io/hexpm/v/pow)](https://hex.pm/packages/pow)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/pow/)

Colored terminal output for Gleam.

```sh
gleam add pow@1
```
```gleam
import pow.{red, green, blue}
import gleam/io

pub fn main() {
  io.println(red("Hello, ") <> green("world") <> blue("!"))
}
```

Further documentation can be found at <https://hexdocs.pm/pow>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
```
