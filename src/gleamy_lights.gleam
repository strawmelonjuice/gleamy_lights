import gleam/int
import gleam/list
import gleam/string

// This is actually translated code from the rust in my CynthiaWebSiteEngine project!

/// # By RGB
/// Given a message and an RGB color, return the message with the color applied.
/// The RGB values should be between 0 and 255.
pub fn by_rgb(msg: String, r: Int, g: Int, b: Int) -> String {
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

pub fn green(msg: String) -> String {
  msg |> by_rgb(0, 255, 0)
}

pub fn ok_green(msg: String) -> String {
  msg |> by_rgb(116, 204, 140)
}

pub fn lime(msg: String) -> String {
  msg |> by_rgb(66, 245, 78)
}

pub fn red(msg: String) -> String {
  msg |> by_rgb(255, 0, 0)
}

pub fn error_red(msg: String) -> String {
  msg |> by_rgb(184, 28, 74)
}

pub fn bright_red(msg: String) -> String {
  msg |> by_rgb(237, 68, 62)
}

pub fn black(msg: String) -> String {
  msg |> by_rgb(41, 40, 40)
}

pub fn bright_black(msg: String) -> String {
  msg |> by_rgb(0, 0, 0)
}

pub fn white(msg: String) -> String {
  msg |> by_rgb(240, 240, 240)
}

pub fn bright_white(msg: String) -> String {
  msg |> by_rgb(255, 255, 255)
}

pub fn yellow(msg: String) -> String {
  msg |> by_rgb(243, 201, 35)
}

pub fn bright_yellow(msg: String) -> String {
  msg |> by_rgb(255, 234, 150)
}

pub fn cyan(msg: String) -> String {
  msg |> by_rgb(16, 227, 227)
}

pub fn bright_cyan(msg: String) -> String {
  msg |> by_rgb(0, 255, 255)
}

pub fn magenta(msg: String) -> String {
  msg |> by_rgb(255, 0, 255)
}

pub fn pink(msg: String) -> String {
  msg |> by_rgb(243, 154, 245)
}

pub fn blue(msg: String) -> String {
  msg |> by_rgb(0, 0, 255)
}

pub fn lightblue(msg: String) -> String {
  msg |> by_rgb(145, 220, 255)
}

pub fn orange(msg: String) -> String {
  msg |> by_rgb(255, 165, 0)
}

pub fn bright_orange(msg: String) -> String {
  msg |> by_rgb(255, 157, 0)
}

pub fn purple(msg: String) -> String {
  msg |> by_rgb(97, 18, 181)
}

pub fn lilac(msg: String) -> String {
  msg |> by_rgb(200, 162, 200)
}

pub fn bg_green(msg: String) -> String {
  msg |> by_rgb_bg(0, 255, 0)
}

pub fn bg_ok_green(msg: String) -> String {
  msg |> by_rgb_bg(116, 204, 140)
}

pub fn bg_lime(msg: String) -> String {
  msg |> by_rgb_bg(66, 245, 78)
}

pub fn bg_red(msg: String) -> String {
  msg |> by_rgb_bg(255, 0, 0)
}

pub fn bg_error_red(msg: String) -> String {
  msg |> by_rgb_bg(184, 28, 74)
}

pub fn bg_bright_red(msg: String) -> String {
  msg |> by_rgb_bg(237, 68, 62)
}

pub fn bg_black(msg: String) -> String {
  msg |> by_rgb_bg(41, 40, 40)
}

pub fn bg_bright_black(msg: String) -> String {
  msg |> by_rgb_bg(0, 0, 0)
}

pub fn bg_white(msg: String) -> String {
  msg |> by_rgb_bg(240, 240, 240)
}

pub fn bg_bright_white(msg: String) -> String {
  msg |> by_rgb_bg(255, 255, 255)
}

pub fn bg_yellow(msg: String) -> String {
  msg |> by_rgb_bg(243, 201, 35)
}

pub fn bg_bright_yellow(msg: String) -> String {
  msg |> by_rgb_bg(255, 234, 150)
}

pub fn bg_cyan(msg: String) -> String {
  msg |> by_rgb_bg(16, 227, 227)
}

pub fn bg_bright_cyan(msg: String) -> String {
  msg |> by_rgb_bg(0, 255, 255)
}

pub fn bg_magenta(msg: String) -> String {
  msg |> by_rgb_bg(255, 0, 255)
}

pub fn bg_pink(msg: String) -> String {
  msg |> by_rgb_bg(243, 154, 245)
}

pub fn bg_blue(msg: String) -> String {
  msg |> by_rgb_bg(0, 0, 255)
}

pub fn bg_lightblue(msg: String) -> String {
  msg |> by_rgb_bg(145, 220, 255)
}

pub fn bg_orange(msg: String) -> String {
  msg |> by_rgb_bg(255, 165, 0)
}

pub fn bg_bright_orange(msg: String) -> String {
  msg |> by_rgb_bg(255, 157, 0)
}

pub fn bg_purple(msg: String) -> String {
  msg |> by_rgb_bg(97, 18, 181)
}

pub fn bg_lilac(msg: String) -> String {
  msg |> by_rgb_bg(200, 162, 200)
}
