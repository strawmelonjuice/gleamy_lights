//// <h1 class="atx" id="gleamy_lights">gleamy_lights</h1>
//// <h2 class="atx" id="modifiers">Modifiers</h2>
//// <p>Modifiers are the functions that modify a string to add a colour to it. Premixes use these, and so are not counted as modifiers.</p>
//// <p>Among these are:</p>
//// <h6 class="atx" id="background">Background</h6>
//// <ul>
//// <li><p><a href="/gleamy_lights/gleamy_lights#by_colour_bg"><code>by_colour_bg</code></a></p>
//// </li>
//// <li><p><a href="/gleamy_lights/gleamy_lights#by_rgb_bg"><code>by_rgb_bg</code></a></p>
//// </li>
//// <li><p><a href="/gleamy_lights/gleamy_lights#by_hexcolour_bg"><code>by_hexcolour_bg</code></a></p>
//// </li>
//// </ul>
//// <h6 class="atx" id="foreground">Foreground</h6>
//// <ul>
//// <li><p><a href="/gleamy_lights/gleamy_lights#by_colour"><code>by_colour</code></a></p>
//// </li>
//// <li><p><a href="/gleamy_lights/gleamy_lights#by_rgb"><code>by_rgb</code></a></p>
//// </li>
//// <li><p><a href="/gleamy_lights/gleamy_lights#by_hexcolour"><code>by_hexcolour</code></a></p>
//// </li>
//// </ul>
//// <h2 class="atx" id="premix-pallettes">Helpers</h2>
//// <p>Helper functions</p>
//// <ul>
//// <li><p><a href="/gleamy_lights/gleamy_lights/helper#println"><code>println</code></a></p>
//// </li>
//// <h2 class="atx" id="premix-pallettes">Premix pallettes</h2>
//// <p>These are modules within gleamy_lights allowing you to use a modifier with no need to enter the colour codes.</p>
//// <ul>
//// <li><p><a href="/gleamy_lights/gleamy_lights/premixed">Premixed colours pallette</a></p>
//// </li>
//// <li><p><a href="/gleamy_lights/gleamy_lights/premixed/gleam_colours">Gleam colours pallette</a></p>
//// </li>
//// </ul>

import gleam/io

pub fn main() {
  io.println(by_rgb_bg("Hello, world!", 255, 0, 0))
}

import envoy
import gleam/int
import gleam/list
import gleam/string
import gleam_community/colour

/// Alias for by_colour
pub const by_color = by_colour

/// # By Colour
/// Given a string and a <code><a href="https://hexdocs.pm/gleam_community_colour/gleam_community/colour.html#Colour">Colour</a></code>, return the message with the colour applied.
pub fn by_colour(msg: String, clr: colour.Colour) -> String {
  by_hexcolour(msg, colour.to_rgb_hex_string(clr))
}

/// Alias for by_colour
pub const by_color_bg = by_colour_bg

// This is actually translated code from the rust in my CynthiaWebSiteEngine project!
/// # By Colour
/// Given a string and a <code><a href="https://hexdocs.pm/gleam_community_colour/gleam_community/colour.html#Colour">Colour</a></code>, return the message with the background colour applied.
pub fn by_colour_bg(msg: String, clr: colour.Colour) -> String {
  by_hexcolour_bg(msg, colour.to_rgb_hex_string(clr))
}

/// # By RGB
/// Given a string and an RGB color, return the message with the color applied.
/// The RGB values should be between 0 and 255.
pub fn by_rgb(msg: String, r: Int, g: Int, b: Int) -> String {
  let f = fn() {
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
  case envoy.get("NO_COLOR") {
    Ok("") -> {
      f()
    }
    Ok(_) -> {
      // If NO_COLOR is set, make sure no alterations are done.
      msg
    }
    _ -> {
      f()
    }
  }
}

/// # By RGB - Background
/// Given a string and an RGB colour, return the message with the background colour applied.
/// The RGB values should be between 0 and 255.
pub fn by_rgb_bg(msg: String, r: Int, g: Int, b: Int) -> String {
  let f = fn() {
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
  case envoy.get("NO_COLOR") {
    Ok("") -> {
      f()
    }
    Ok(_) -> {
      // If NO_COLOR is set, make sure no alterations are done.
      msg
    }
    _ -> {
      f()
    }
  }
}

/// (Internal) Convert a hex color to an RGB list.
fn hexcolour_to_rgb(hex: String) -> List(Int) {
  let hexcolour = string.replace(hex, "#", "")
  let r = case int.base_parse(string.slice(hexcolour, 0, 2), 16) {
    Ok(r) -> r
    Error(_) -> {
      // io.println_error("gleamy_lights: Invalid hex color")
      0
    }
  }
  let g = case int.base_parse(string.slice(hexcolour, 2, 2), 16) {
    Ok(g) -> g
    Error(_) -> {
      // io.println_error("gleamy_lights: Invalid hex colour")
      0
    }
  }
  let b = case int.base_parse(string.slice(hexcolour, 4, 2), 16) {
    Ok(b) -> b
    Error(_) -> {
      // io.println_error("gleamy_lights: Invalid hex colour")
      0
    }
  }
  [r, g, b]
}

/// Alias for by_hexcolour
pub const by_hexcolor = by_hexcolour

/// # By Hex colour
/// Given a string and a hex colour, return the message with the colour applied.
///
/// Will return black if the hex colour is invalid.
pub fn by_hexcolour(msg: String, hexcolour: String) -> String {
  let rgb = hexcolour_to_rgb(hexcolour)
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

/// Alias for by_hexcolour_bg
pub const by_hexcolor_bg = by_hexcolour_bg

/// # By Hexcolour - Background
/// Given a string and a hex colour, return the message with the background color applied.
/// Will return black if the hex colour is invalid.
pub fn by_hexcolour_bg(msg: String, hexcolour: String) -> String {
  let rgb = hexcolour_to_rgb(hexcolour)
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
