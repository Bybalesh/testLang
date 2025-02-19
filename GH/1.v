Definition next_weekday (d:day) : day :=
  match d with
  | monday => tuesday
  | tuesday => wednesday
  | wednesday => thursday
  | thursday => fridaymodule main

fn main() {
    println('Hello, World!')
}

  | friday => monday
  | saturday => monday
  | sunday => monday
  end.
