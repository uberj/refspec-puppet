class mozpuppet::mozprofile::appA_db
{ 
  class { '::mozpuppet::profile::mysql_database':
    root_password    => heira('projectA::mysql_password'),
  }
}
