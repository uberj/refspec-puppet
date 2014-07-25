class ::profile::dpaste::database {
  class { '::mysql::server':
    root_password    => hiera('::profile::dpaste::database::root_password'),
  }

  mysql::db { 'dpaste':
    user     => hiera('::profile::dpaste::database::dpaste_username'),
    password => hiera('::profile::dpaste::database::dpaste_user_password'),
    host     => hiera('::profile::dpaste::database::host'),  # localhost ?
    grant    => hiera('::profile::dpaste::database::dpaste_user_privilates'), #['SELECT', 'UPDATE'],
  }
}
