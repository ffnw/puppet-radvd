define radvd::interface (
  String           $interface = $title,
  Array[String]    $subnet6   = [],
) {

  include radvd
  include radvd::params

  concat::fragment { "radvd-${title}":
    target  => '/etc/radvd.conf',
    content => epp('radvd/radvd.epp', {
      interface            => $interface,
      advLinkMTU           => $radvd::advLinkMTU,
      maxRtrAdvInterval    => $radvd::maxRtrAdvInterval,
      advPreferredLifetime => $radvd::advPreferredLifetime,
      advValidLifetime     => $radvd::advValidLifetime,
      subnet6              => $subnet6,
      dns6                 => $radvd::dns6,
    }),
    order   => '20',
  }

}

