class sample (
#  $x_value = 100,
#  $y_value = 200,
#  $x = 10000,
  $arr = { 'sum 1' => {x => 1, y => 1}, 
           'sum 2' => {x => 2, y => 2}
         },
) {  

  sample::sumtype { "sum of 100 and 1":
    x => 100,
    y => 1
  } ->
  sample::sumtype { "sum of 200 and 2":
    x => 200,
    y => 2
  }
  
  #create_resources(sample::sumtype, $arr)
  
  include sample::service
  include sample::config

  Class['sample::config'] -> Class['sample::service']
}









#  stage { 'pre':
#    before => Stage['main'],
#  }
#  create_resources(type_x, $arr)
 
#  class { '::sample::helper':
##    name => 'anukool',
#  }
#  file { '/tmp/test.txt':
#    content => template('sample/test.txt.erb'),
#  }

#  include sample::config
#  class { '::sample::test2':
#    stage => 'pre',
#  }
  
#  type_x { 'x_equals_200':
#    x => 200,    
#  }
 # type_x { 'x_equals_300':
#    x => 300,    
#  }

#  Class['sample::helper'] -> Class['sample::config'] -> File['/tmp/test.txt'] #-> Class['sample::test2']
 # Class['sample::helper'] 
 

  #Class['sample'] -> Class[''::sample::helper']
#}