class radvd::install {

  package { 'radvd':
    ensure => installed,
  }

}

