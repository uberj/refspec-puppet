class mozprofile::test_projectB_mysql_database
{ 
  class { '::mozprofile::profile::mysql_database':
    root_password    => heira('projectB::mysql_password'),
  }
}
