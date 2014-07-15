class mozpuppet::mozprofile::test_projectA_mysql_database
{ 
  class { '::mozpuppet::profile::mysql_database':
    root_password    => heira('projectA::mysql_password'),
  }
}
