class radvd::service inherits radvd {

  service { 'radvd':
    ensure => 'running',
    enable => true,
  }

}
