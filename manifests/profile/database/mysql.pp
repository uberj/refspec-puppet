define mozpuppet::profile::database (
    $db_name,
    $root_password,
    $username,
    $user_password,
    $host,
    $user_privilates,
) {
  class { '::mysql::server':
    root_password    => hiera('mysql::root_password'),
  }

  ::mysql::db { $db_name:
    user     => $username,
    password => $user_password,
    host     => $host,
    grant    => $user_privilates,
  }
}
