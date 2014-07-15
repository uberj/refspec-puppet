class mozpuppet::profile::mysql_database {
  class { '::mysql::server':
    root_password    => hiera('app_a::mysql_password'),
  }
}
