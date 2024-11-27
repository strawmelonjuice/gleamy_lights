import gleam/io
/// # println
/// A simple function to print a string to the console.
/// This function is a drop-in for the `println` function, so that JS colour support is ensured,
/// even on browsers.
///
/// Mainly meant for packages that are ran everywhere, like Gleam libraries.
///
/// If you stay in the console just use the `gleam/io` module.
/// There's no need to use this function then.
///
/// Note: Nested colours are not supported.
@deprecated("Use the console module instead.")
@external(javascript, "../ffi.mjs", "log")
pub fn println(str: String) -> Nil {
  // On Erlang, a console is guaranteed to be available.
  // On JavaScript, we need to check if the console is available. If not we'll need to convert to browser-
  io.println(str)
}
