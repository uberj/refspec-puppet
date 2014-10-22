class m::apache::php_vhost (
  $vhost_name,
  $install_root,
) {
  class {
    '::apache':
      default_mods        => true,
      default_confd_files => false,
      mpm_module          => 'prefork';
    '::apache::mod::php':
  }

  ::apache::vhost { "$vhost_name":
    port             => '80',
    default_vhost    => true,
    docroot          => "$install_root",
  }
}
