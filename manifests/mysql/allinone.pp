class m::mysql::allinone (
  $root_password,
  $db_name,
  $user,
  $password,
  $allowed_hosts,
) {
  class { "m::mysql::server":
    root_password => $root_password
  }

  ::mysql::db { "$db_name":
    user     => $username,
    password => $password,
    host     => $allowed_hosts,
    grant    => ['ALL']
  }
}

