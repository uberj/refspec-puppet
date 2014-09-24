class m::nfs::single_exported_share (
  $share_path,
  $acl_network="$::network_eth0",
  $acl_netmask="$::netmask_eth0",
  $nfs_version=latest
) {

  # Make sure the share_path exists
  exec { 'create-share-path':
    command => "mkdir -p $share_path",
    path    => "/bin/"
  }

  class { 'nfs::server':
      package => $package,
      service => running,
      enable  => true,
  }

  nfs::export { $share_path:
      options => [ 'rw', 'async' ],
      clients => [ "${::network_eth0}/${netmask_eth0}" ],
      require => Exec['create-share-path']
  }
}
