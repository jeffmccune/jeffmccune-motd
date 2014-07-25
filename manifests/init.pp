# Class: motd
#
# This module manages the /etc/motd file using a template
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#  include motd
#
# [Remember: No empty lines between comments and class definition]
class motd {

  $motd_group = $operatingsystem ? {
    solaris => 'sys',
    default => '0',
  }

  $custommessage = 'This is a production system! All activity monitored.'

  file { '/etc/motd':
    ensure  => file,
    content => template("${module_name}/motd.erb"),
    owner   => '0',
    group   => $motd_group,
    mode    => '0644',
  }
}
