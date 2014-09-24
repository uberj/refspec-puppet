class m::nfs::single_mounted_share (
  $share_path,
  $nfs_server,
  $nfs_client_version=latest,
  $mount_path=undef,
) {

  if ! ($mount_path) {
    $mount_path_ = $share_path
  } else {
    $mount_path_ = $mount_path
  }

  class { 'nfs::client':
    ensure => $nfs_client_version,
  }

  exec { 'create-mount-path':
    command => "mkdir -p $mount_path_",
    path    => "/bin/"
  }

  mount { "$mount_path_":
    device   => "$nfs_server:$share_path",
    fstype   => "nfs",
    ensure   => "mounted",
    options  => "defaults",
    atboot   => true,
    require  => [Exec['create-mount-path'], Class['nfs::client']]
  }
}
