class libxml {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'libxml2' ],
  }

  package { $required: ensure => latest }

}
