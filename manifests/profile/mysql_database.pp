class mozpuppet::profile::mysql_database {
  class { '::mysql::server':
    root_password    => hiera('mysql_root_password'),
  }
}
