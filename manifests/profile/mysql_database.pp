class mozpuppet::profile::mysql_database (
  $mysql_password, 
){ 
  class { '::mysql::server':
    root_password => $mysqlpassword,
  }
}
