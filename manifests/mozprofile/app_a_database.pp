class mozpuppet::mozprofile::app_a_database {
  class { '::mozpuppet::profile::mysql_database':
    root_password    => hiera('app_a::mysql_password'),
  }
}
