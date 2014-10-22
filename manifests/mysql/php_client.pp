class m::mysql::php_client () {
  include ::mysql::client

  class { '::mysql::bindings':
    php_enable => true
  }
}
