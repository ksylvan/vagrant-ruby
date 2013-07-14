group { "puppet":
      ensure => "present"
}
package {
	[ 'git', 'bison', 'autoconf', 'libffi-dev', 'libgdbm-dev' ]:
	ensure => 'present'
}
