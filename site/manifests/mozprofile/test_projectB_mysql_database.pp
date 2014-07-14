class mozprofile::test_projectB_mysql_database
{ 
  class { '::profile::mysql_database':
    root_password    => heira('projectB::mysql_password'),
  }
}
