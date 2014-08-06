class m::mysql::python_client () {
  include ::mysql::client

  class { '::mysql::bindings':
    python_enable => true
  }

}
