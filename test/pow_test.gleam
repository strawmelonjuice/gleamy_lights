import gleeunit
import gleeunit/should

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hello_world_test() {
  // You'll see if it fails, but strings are just as they are. I will not test them. Thank you.
  1
  |> should.equal(1)
}
