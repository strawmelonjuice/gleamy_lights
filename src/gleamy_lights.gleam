import envoy
import gleam/int
import gleam/list
import gleam/string

// This is actually translated code from the rust in my CynthiaWebSiteEngine project!

/// # By RGB
/// Given a message and an RGB color, return the message with the color applied.
/// The RGB values should be between 0 and 255.
pub fn by_rgb(msg: String, r: Int, g: Int, b: Int) -> String {
  case envoy.get("NO_COLOR") {
    Ok("1") -> {
      // If NO_COLOR is set, make sure no alterations are done.
      msg
    }
    _ -> {
      // format!("\x1b[38;2;{};{};{}m{}\x1b[0m", r, g, b, self)
      "\u{001b}[38;2;"
      <> int.to_string(r)
      <> ";"
      <> int.to_string(g)
      <> ";"
      <> int.to_string(b)
      <> "m"
      <> msg
      <> "\u{001b}[0m"
    }
  }
}

/// # By RGB - Background
/// Given a message and an RGB color, return the message with the background color applied.
/// The RGB values should be between 0 and 255.
pub fn by_rgb_bg(msg: String, r: Int, g: Int, b: Int) -> String {
  "\u{001b}[48;2;"
  <> int.to_string(r)
  <> ";"
  <> int.to_string(g)
  <> ";"
  <> int.to_string(b)
  <> "m"
  <> msg
  <> "\u{001b}[0m"
}

/// (Internal) Convert a hex color to an RGB list.
fn hexcolor_to_rgb(hex: String) -> List(Int) {
  let hexcolor = string.replace(hex, "#", "")
  let r = case int.base_parse(string.slice(hexcolor, 0, 2), 16) {
    Ok(r) -> r
    Error(_) -> {
      // io.println_error("gleamy_lights: Invalid hex color")
      0
    }
  }
  let g = case int.base_parse(string.slice(hexcolor, 2, 2), 16) {
    Ok(g) -> g
    Error(_) -> {
      // io.println_error("gleamy_lights: Invalid hex color")
      0
    }
  }
  let b = case int.base_parse(string.slice(hexcolor, 4, 2), 16) {
    Ok(b) -> b
    Error(_) -> {
      // io.println_error("gleamy_lights: Invalid hex color")
      0
    }
  }
  [r, g, b]
}

/// # By Hexcolor
/// Given a message and a hex color, return the message with the color applied.
///
/// Will return black if the hex color is invalid.
pub fn by_hexcolor(msg: String, hexcolor: String) -> String {
  let rgb = hexcolor_to_rgb(hexcolor)
  let assert Ok(r) =
    rgb
    |> list.first()
  let assert Ok(rest) =
    rgb
    |> list.rest()
  let assert Ok(g) =
    rest
    |> list.first()
  let assert Ok(rest) =
    rest
    |> list.rest()
  let assert Ok(b) =
    rest
    |> list.first()
  msg |> by_rgb(r, g, b)
}

/// # By Hexcolor - Background
/// Given a message and a hex color, return the message with the background color applied.
/// Will return black if the hex color is invalid.
pub fn by_hexcolor_bg(msg: String, hexcolor: String) -> String {
  let rgb = hexcolor_to_rgb(hexcolor)
  let assert Ok(r) =
    rgb
    |> list.first()
  let assert Ok(rest) =
    rgb
    |> list.rest()
  let assert Ok(g) =
    rest
    |> list.first()
  let assert Ok(rest) =
    rest
    |> list.rest()
  let assert Ok(b) =
    rest
    |> list.first()
  msg |> by_rgb_bg(r, g, b)
}
