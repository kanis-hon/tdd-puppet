define sample::sumtype
(
  $x = 0,
  $y = 0
) {
  
  if !is_numeric($x){
    fail("invalid x value, should be numeric")
  }
  if !is_numeric($y) {
    fail("invalid y value, should be numeric")
  }
  
  $z = $x + $y
  notify { "x is ${x}, y is ${y}, sum of x and y is ${z}": }
  
}