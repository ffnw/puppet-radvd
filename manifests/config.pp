class radvd::config {

  concat { '/etc/radvd.conf':
    ensure         => present,
    owner          => 'root',
    group          => 'root',
    mode           => '0644',
    ensure_newline => true,
  }

  concat::fragment { 'radvd-header':
    target => '/etc/radvd.conf',
    source => 'puppet:///modules/radvd/puppet-header',
    order  => '00',
  }

}

