class sample::comparerclass
(
  $x = 1,
  $y = 100
) {

  if !is_integer($x) {
    fail("invalid x value, should be integer")
  }
  if !is_integer($y) {
    fail("invalid y value, should be integer")
  }

  if $x < $y {
    $result = 'x is less than y'
  }
  elsif $x == $y {
    $result = 'x is equal to y'
  }
  else {
    $result = 'x is greater than y'
  }

  notify { "result is \"${result}\"": }
}