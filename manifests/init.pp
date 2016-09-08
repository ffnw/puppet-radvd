class radvd (
  Array[String] $dns6                 = $radvd::params::dns6,
  Integer       $advLinkMTU           = $radvd::params::advLinkMTU,
  Integer       $maxRtrAdvInterval    = $radvd::params::maxRtrAdvInterval,
  Integer       $advPreferredLifetime = $radvd::params::advPreferredLifetime,
  Integer       $advValidLifetime     = $radvd::params::advValidLifetime,
) inherits radvd::params {

  class { 'radvd::install': } ->
  class { 'radvd::config': } ~>
  class { 'radvd::service': }

  contain radvd::install
  contain radvd::config
  contain radvd::service

  create_resources('radvd::interface', hiera('radvd::interface', {}))

}

