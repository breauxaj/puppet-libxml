class libxml {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'libxml2' ],
  }

  package { $required: ensure => latest }

  file { '/usr/lib64/libxml2.so':
    ensure => 'link',
    owner  => 'root',
    group  => 'root',
    target => '/usr/lib64/libxml2.so.2',
  }

}
