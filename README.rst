Refspec puppet
--------------
No puppet modules should be in this repository, instead modules shuold be added to the ``Puppetfile`` in the root of this project.

Install everything locally
--------------------------
::
    git clone https://github.com/uberj/refspec-r10k
    cd refspec-r10k
    librarian-puppet install --verbose

Librarian-puppet
----------------
All modules are pulled in via ``Puppetfile``\s which are processed by librarian-puppet_. If you make a change to any ``Puppetfile`` you are advised to run ``librarian-puppet install --verbose`` to ensure librarian-puppet can resolve any new dependancies.

r10k
----
The r10k_ tool is for managing puppet environments on the puppetmaster.


.. _librarian-puppet: http://librarian-puppet.com/
.. _r10l: http://rubydoc.info/gems/r10k/1.2.1/
