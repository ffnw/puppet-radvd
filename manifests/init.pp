class radvd (
  Array[String] $dns6                 = $radvd::params::dns6,
  Integer       $advLinkMTU           = $radvd::params::advLinkMTU,
  Integer       $advPreferredLifetime = $radvd::params::advPreferredLifetime,
  Integer       $advValidLifetime     = $radvd::params::advValidLifetime,
) inherits radvd::params {

  class { 'radvd::install': } ->
  class { 'radvd::config': }

  contain radvd::install
  contain radvd::config

  create_resources('radvd::interface', hiera('radvd::interface', {}))

}

