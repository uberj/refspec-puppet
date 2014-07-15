class mozpuppet::profile::mysql_database (
  $root_password,
){
  class { '::mysql::server':
    root_password => $root_password,
  }
}
