# Class: motd
#
# This module manages the /etc/motd file using a template
#
# Parameters:
#
# [*template*]
#   Sets the path to the template to use as content for main motd file
#   If defined, main motd file has: content => content("$template")
# [*show_classes*]
#   Disable ehxibition of classes used by puppet
# [*content_footer*]
#   Add content at the footer of the motd.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#  include motd
#
# [Remember: No empty lines between comments and class definition]
class motd(
  $puppet_info = true,
  $hardware_info = true,
  $template = 'motd/motd.erb',
  $show_classes = true,
  $content_footer = undef,
) {

  validate_bool($puppet_info, $hardware_info, $show_classes)

  $motd_group = $::operatingsystem ? {
    solaris => 'sys',
    default => '0',
  }

  file { '/etc/motd':
    ensure  => file,
    content => template($template),
    owner   => '0',
    group   => $motd_group,
    mode    => '0644',
  }
}
