class sample::config (
  $connection_string = 'localhost:9200',
  $config_file       = 'config.conf',
) {


  if $::kernel == 'linux' or $::kernel == 'Darwin' {
    $config_dir = '/etc/sample_app/config/'
  } 
  elsif $::kernel == 'windows' {
    $config_dir = 'c:/program files/sample_app/config/'
  } 
  else {
    $config_dir = ''
  }

  file { "${config_file}":
    content  => template('sample/config.conf.erb'),
    path     => "${config_dir}${config_file}"
  }
}