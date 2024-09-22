//// Pre-mixed colors

import gleamy_lights.{by_rgb, by_rgb_bg}

/// ### Red text
pub fn text_red(msg: String) -> String {
  msg |> by_rgb(255, 0, 0)
}

/// ### Red background
pub fn bg_red(msg: String) -> String {
  msg |> by_rgb_bg(255, 0, 0)
}

/// ### "Error" red text
///
/// (Note: this is not a standard color, but it's specifically chosen to be used in error messages)///
pub fn text_error_red(msg: String) -> String {
  msg |> by_rgb(184, 28, 74)
}

/// ### "Error" red background
///
/// (Note: this is not a standard color, but it's specifically chosen to be used in error messages)
pub fn bg_error_red(msg: String) -> String {
  msg |> by_rgb_bg(184, 28, 74)
}

/// ### Bright red text
pub fn text_bright_red(msg: String) -> String {
  msg |> by_rgb(237, 68, 62)
}

/// ### Bright red background
pub fn bg_bright_red(msg: String) -> String {
  msg |> by_rgb_bg(237, 68, 62)
}

/// ### Green text
pub fn text_green(msg: String) -> String {
  msg |> by_rgb(0, 255, 0)
}

/// ### Green background
pub fn bg_green(msg: String) -> String {
  msg |> by_rgb_bg(0, 255, 0)
}

/// ### "OK" green text
///
/// (Note: this is not a standard color, but it's specifically chosen to be used in success messages)
pub fn text_ok_green(msg: String) -> String {
  msg |> by_rgb(116, 204, 140)
}

/// ### "OK" green background
///
/// (Note: this is not a standard color, but it's specifically chosen to be used in success messages)
pub fn bg_ok_green(msg: String) -> String {
  msg |> by_rgb_bg(116, 204, 140)
}

/// ### Lime text
pub fn text_lime(msg: String) -> String {
  msg |> by_rgb(66, 245, 78)
}

/// ### Lime background
pub fn bg_lime(msg: String) -> String {
  msg |> by_rgb_bg(66, 245, 78)
}

/// ### Yellow text
pub fn text_yellow(msg: String) -> String {
  msg |> by_rgb(243, 201, 35)
}

/// ### Yellow background
pub fn bg_yellow(msg: String) -> String {
  msg |> by_rgb_bg(243, 201, 35)
}

/// ### Bright yellow text
pub fn text_bright_yellow(msg: String) -> String {
  msg |> by_rgb(255, 234, 150)
}

/// ### Bright yellow background
pub fn bg_bright_yellow(msg: String) -> String {
  msg |> by_rgb_bg(255, 234, 150)
}

/// ### Orange text
pub fn text_orange(msg: String) -> String {
  msg |> by_rgb(255, 165, 0)
}

/// ### Orange background
pub fn bg_orange(msg: String) -> String {
  msg |> by_rgb_bg(255, 165, 0)
}

/// ### Bright orange text
pub fn text_bright_orange(msg: String) -> String {
  msg |> by_rgb(255, 157, 0)
}

/// ### Bright orange background
pub fn bg_bright_orange(msg: String) -> String {
  msg |> by_rgb_bg(255, 157, 0)
}

/// ### Blue text
pub fn text_blue(msg: String) -> String {
  msg |> by_rgb(0, 0, 255)
}

/// ### Blue background
pub fn bg_blue(msg: String) -> String {
  msg |> by_rgb_bg(0, 0, 255)
}

/// ### Light blue text
pub fn text_lightblue(msg: String) -> String {
  msg |> by_rgb(145, 220, 255)
}

/// ### Light blue background
pub fn bg_lightblue(msg: String) -> String {
  msg |> by_rgb_bg(145, 220, 255)
}

/// ### Lilac text
pub fn text_lilac(msg: String) -> String {
  msg |> by_rgb(200, 162, 200)
}

/// ### Lilac background
pub fn bg_lilac(msg: String) -> String {
  msg |> by_rgb_bg(200, 162, 200)
}

/// ### Magenta text
pub fn text_magenta(msg: String) -> String {
  msg |> by_rgb(255, 0, 255)
}

/// ### Magenta background
pub fn bg_magenta(msg: String) -> String {
  msg |> by_rgb_bg(255, 0, 255)
}

/// ### Purple text
pub fn text_purple(msg: String) -> String {
  msg |> by_rgb(97, 18, 181)
}

/// ### Purple background
pub fn bg_purple(msg: String) -> String {
  msg |> by_rgb_bg(97, 18, 181)
}

/// ### Pink text
pub fn text_pink(msg: String) -> String {
  msg |> by_rgb(243, 154, 245)
}

/// ### Pink background
pub fn bg_pink(msg: String) -> String {
  msg |> by_rgb_bg(243, 154, 245)
}

/// ### White text
pub fn text_white(msg: String) -> String {
  msg |> by_rgb(240, 240, 240)
}

/// ### White background
pub fn bg_white(msg: String) -> String {
  msg |> by_rgb_bg(240, 240, 240)
}

/// ### Bright white text
pub fn text_bright_white(msg: String) -> String {
  msg |> by_rgb(255, 255, 255)
}

/// ### Bright white background
pub fn bg_bright_white(msg: String) -> String {
  msg |> by_rgb_bg(255, 255, 255)
}

/// ### Black text
pub fn text_black(msg: String) -> String {
  msg |> by_rgb(41, 40, 40)
}

/// ### Black background
pub fn bg_black(msg: String) -> String {
  msg |> by_rgb_bg(41, 40, 40)
}

/// ### Dark black text
pub fn text_dark_black(msg: String) -> String {
  msg |> by_rgb(0, 0, 0)
}

/// ### Dark black background
pub fn bg_dark_black(msg: String) -> String {
  msg |> by_rgb_bg(0, 0, 0)
}

/// ### Cyan text
pub fn text_cyan(msg: String) -> String {
  msg |> by_rgb(16, 227, 227)
}

/// ### Cyan background
pub fn bg_cyan(msg: String) -> String {
  msg |> by_rgb_bg(16, 227, 227)
}

/// ### Bright cyan text
pub fn text_bright_cyan(msg: String) -> String {
  msg |> by_rgb(0, 255, 255)
}

/// ### Bright cyan background
pub fn bg_bright_cyan(msg: String) -> String {
  msg |> by_rgb_bg(0, 255, 255)
}
