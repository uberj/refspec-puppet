class mozpuppet::mozprofile::test_projectA_mysql_database
{ 
  class { '::profile::mysql_database':
    root_password    => heira('projectA::mysql_password'),
  }
}
