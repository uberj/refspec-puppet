class m::mysql::server (
  $root_password
) {
  class { '::mysql::server':
    root_password     => $root_password,
    restart           => true,
    override_options  => {
      'mysqld' => {
        'bind-address' => '0.0.0.0',
      }
    }
  }
}
