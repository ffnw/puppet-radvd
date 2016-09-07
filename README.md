# puppet-radvd

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with radvd](#setup)
    * [Beginning with radvd](#beginning-with-radvd)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Manages radvd service for the Freifunk Nordwest network.

## Setup

### Beginning with radvd

```puppet
radvd::pool { 'ol-nord':
  interface => 'bat-ol-nord',
  subnet6   => [ '2a03:2260:1001:0800::/53' ],
}
```

## Usage

```puppet
class { 'radvd':
  dns6                 => [ 'fe80::1','fe80::2' ],
  advLinkMTU           => 1500,
  advPreferredLifetime => 14400,
  advValidLifetime     => 86400,
}

radvd::interface { 'ol-nord':
  interface => 'bat-ol-nord',
  subnet6   => [ '2a03:2260:1001:0800::/53' ],
}
```

## Reference

* class radvd
  * dns6 (optional, default [])
  * advLinkMTU (optional, default 1500)
  * advPreferredLifetime (optional, default 14400)
  * advValidLifetime (optional, default 86400)

* define radvd::interface
  * interface (optional, default $title)
  * subnet6 (optional, default [])

## Limitations

### OS compatibility
* Debian 8

## Development

### How to contribute
Fork the project, work on it and submit pull requests, please.

