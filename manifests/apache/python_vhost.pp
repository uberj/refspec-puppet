class m::apache::python_vhost (
  $vhost_name,
  $install_root,
  $wsgi_path,
  $static_root,
) {
  class {
    '::apache':
      default_mods        => true,
      default_confd_files => false;
    '::apache::mod::wsgi':
      wsgi_socket_prefix => '/var/run/wsgi';
  }

  ::apache::vhost { "$vhost_name":
    port                        => '80',
    default_vhost               => true,
    aliases                     => [
      {alias => '/static', path => $static_root}
    ],
    docroot                     => "$install_root",
    wsgi_application_group      => '%{GLOBAL}',
    wsgi_daemon_process         => 'wsgi',
    wsgi_daemon_process_options => {
      processes    => '2',
      threads      => '15',
      display-name => '%{GROUP}',
    },
    wsgi_import_script          => "$wsgi_path",
    wsgi_import_script_options  =>
      { process-group => 'wsgi', application-group => '%{GLOBAL}' },
    wsgi_process_group          => 'wsgi',
    wsgi_script_aliases         => { '/' => "$wsgi_path" },
  }
}
