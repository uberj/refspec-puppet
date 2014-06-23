node 'refspec2.vm.labs.scl3.mozilla.com' {
  include ::openstack::role::controller
}

node 'refspec3.vm.labs.scl3.mozilla.com' {
  include ::openstack::role::network
}

node 'refspec4.vm.labs.scl3.mozilla.com' {
  include ::openstack::role::compute
}

node 'refspec5.vm.labs.scl3.mozilla.com' {
  include ::openstack::role::compute
}
