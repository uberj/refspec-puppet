class m::mysql::allinone (
  $root_password,
  $user,
  $password,
  $allowed_hosts,
) {
  class { '::mysql::server':
    root_password     => $::root_password,
    restart           => true,
    override_options  => {
      'mysqld' => {
        'bind-address' => '0.0.0.0',
      }
    }
  }

  ::mysql::db { $::db_name:
    user     => $::username,
    password => $::password,
    host     => $::allowed_hosts,
    grant    => ['ALL']
  }
}

