import gleam/io
/// # console.log()
/// A simple function to print a string to the console.
/// This function is a drop-in for the `println` function, so that JS colour support is ensured,
/// even on browsers.
///
/// Mainly meant for packages that are ran everywhere, like Gleam libraries.
///
/// If you stay in the console just use the `gleam/io` module.
/// There's no need to use this function then.
///
/// Note: Nested colours are not yet supported.

@external(javascript, "../ffi.mjs", "log")
pub fn log(str: String) -> Nil {
  // On Erlang, a console is guaranteed to be available.
  // On JavaScript, we need to check if the console is available. If not we'll need to convert to browser-
  io.println(str)
}

/// # console.info()
/// A simple function to print a message to the console.
/// This function is a drop-in for the `println` function, so that JS colour support is ensured,
/// even on browsers.
///
/// Mainly meant for packages that are ran everywhere, like Gleam libraries.
///
/// If you stay in the console just use the `gleam/io` module.
/// There's no need to use this function then.
///
/// Note: Nested colours are not yet supported.
@external(javascript, "../ffi.mjs", "info")
pub fn info(str: String) -> Nil {
  // On Erlang, a console is guaranteed to be available.
  // On JavaScript, we need to check if the console is available. If not we'll need to convert to browser-
  io.println(str)
}

/// # console.error()
/// A simple function to print a error to the console.
/// This function is a drop-in for the `println` function, so that JS colour support is ensured,
/// even on browsers.
///
/// Mainly meant for packages that are ran everywhere, like Gleam libraries.
///
/// If you stay in the console just use the `gleam/io` module.
/// There's no need to use this function then.
///
/// Note: Nested colours are not yet supported.
@external(javascript, "../ffi.mjs", "error")
pub fn error(str: String) -> Nil {
  // On Erlang, a console is guaranteed to be available.
  // On JavaScript, we need to check if the console is available. If not we'll need to convert to browser-
  io.println_error(str)
}

/// # console.warn()
/// A simple function to print a warning to the console.
/// This function is a drop-in for the `println` function, so that JS colour support is ensured,
/// even on browsers.
///
/// Mainly meant for packages that are ran everywhere, like Gleam libraries.
///
/// If you stay in the console just use the `gleam/io` module.
/// There's no need to use this function then.
///
/// Note: Nested colours are not yet supported.
@external(javascript, "../ffi.mjs", "warn")
pub fn warn(str: String) -> Nil {
  // On Erlang, a console is guaranteed to be available.
  // On JavaScript, we need to check if the console is available. If not we'll need to convert to browser-
  io.println_error(str)
}
