//// # Gleam colours
////
//// Especially coloured after Gleam's colour palette.
////
//// `#ffaff3` - Faff Pink
////
//// `#fefefc` - White
////
//// `#a6f0fc` - Unnamed Blue
////
//// `#fffbe8` - Aged Plastic Yellow
////
//// `#584355` - Unexpected Aubergine
////
//// `#292d3e` - Underwater Blue
////
//// `#2f2f2f` - Charcoal
////
//// `#1e1e1e` - Black
////
//// `#151515` - Blacker
////
////
////
//// See: <https://gleam.run/branding/>

import gleamy_lights.{by_hexcolor, by_hexcolor_bg}

/// ### "Faff pink" text
/// Hex: `#ffaff3`
pub fn text_faff_pink(msg: String) -> String {
  msg
  |> by_hexcolor("#ffaff3")
}

/// ### "Faff pink" background
/// Hex: `#ffaff3`
pub fn bg_faff_pink(msg: String) -> String {
  msg
  |> by_hexcolor_bg("#ffaff3")
}

/// ### "White" text
/// Hex: `#fefefc`
pub fn text_white(msg: String) -> String {
  msg
  |> by_hexcolor("#fefefc")
}

/// ### "White" background
/// Hex: `#fefefc`
pub fn bg_white(msg: String) -> String {
  msg
  |> by_hexcolor_bg("#fefefc")
}

/// ### "Unnamed blue" text
/// Hex: `#a6f0fc`
pub fn text_unnamed_blue(msg: String) -> String {
  msg
  |> by_hexcolor("#a6f0fc")
}

/// ### "Unnamed blue" background
/// Hex: `#a6f0fc`
pub fn bg_unnamed_blue(msg: String) -> String {
  msg
  |> by_hexcolor_bg("#a6f0fc")
}

/// ### "Aged plastic yellow" text
/// Hex: `#fffbe8`
pub fn text_aged_plastic_yellow(msg: String) -> String {
  msg
  |> by_hexcolor("#fffbe8")
}

/// ### "Aged plastic yellow" background
/// Hex: `#fffbe8`
pub fn bg_aged_plastic_yellow(msg: String) -> String {
  msg
  |> by_hexcolor_bg("#fffbe8")
}

/// ### "Unexpected aubergine" text
/// Hex: `#584355`
pub fn text_unexpected_aubergine(msg: String) -> String {
  msg
  |> by_hexcolor("#584355")
}

/// ### "Unexpected aubergine" background
/// Hex: `#584355`
pub fn bg_unexpected_aubergine(msg: String) -> String {
  msg
  |> by_hexcolor_bg("#584355")
}

/// ### "Underwater blue" text
/// Hex: `#292d3e`
pub fn text_underwater_blue(msg: String) -> String {
  msg
  |> by_hexcolor("#292d3e")
}

/// ### "Underwater blue" background
/// Hex: `#292d3e`
pub fn bg_underwater_blue(msg: String) -> String {
  msg
  |> by_hexcolor_bg("#292d3e")
}

/// ### "Charcoal" text
/// Hex: `#2f2f2f`
pub fn text_charcoal(msg: String) -> String {
  msg
  |> by_hexcolor("#2f2f2f")
}

/// ### "Charcoal" background
/// Hex: `#2f2f2f`
pub fn bg_charcoal(msg: String) -> String {
  msg
  |> by_hexcolor_bg("#2f2f2f")
}

/// ### "Black" text
/// Hex: `#1e1e1e`
pub fn text_black(msg: String) -> String {
  msg
  |> by_hexcolor("#1e1e1e")
}

/// ### "Black" background
/// Hex: `#1e1e1e`
pub fn bg_black(msg: String) -> String {
  msg
  |> by_hexcolor_bg("#1e1e1e")
}

/// ### "Blacker" text
/// Hex: `#151515`
pub fn text_blacker(msg: String) -> String {
  msg
  |> by_hexcolor("#151515")
}

/// ### "Blacker" background
/// Hex: `#151515`
pub fn bg_blacker(msg: String) -> String {
  msg
  |> by_hexcolor_bg("#151515")
}
