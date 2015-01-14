class sample::service
(
  $service_name = 'sample_service',
  $enable       = true,
  $ensure       = 'running',
) {
  validate_bool($enable)
  
  service { $service_name:
    ensure => $ensure,
    name   => $service_name,
    enable => $enable,
  }
  
}