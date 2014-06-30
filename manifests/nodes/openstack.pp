node 'refspec2.vm.labs.scl3.mozilla.com' {
  include ::test_module
  include ::openstack::role::controller
}

node 'refspec3.vm.labs.scl3.mozilla.com' {
  include ::openstack::role::network
  include ::openstack::role::storage
}

node 'refspec4.vm.labs.scl3.mozilla.com' {
  include ::openstack::role::compute
}

node 'refspec5.vm.labs.scl3.mozilla.com' {
  include ::openstack::role::compute
}
