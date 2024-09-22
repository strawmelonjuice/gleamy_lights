import gleam/int

// This is actually translated code from the rust in my CynthiaWebSiteEngine project!

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

pub fn by_rgb_bg(msg: String, r: Int, g: Int, b: Int) -> String {
  // format!("\x1b[48;2;{};{};{}m{}\x1b[0m", r, g, b, self)
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
