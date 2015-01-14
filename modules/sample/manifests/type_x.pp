define type_x (
  $x = undefined
) {

  file { "/tmp/${x}.txt":
    content => template('sample/test.txt.erb'),
  }
}