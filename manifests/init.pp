# Class: motd
#
# This module manages the /etc/motd file using a template
#
# Parameters:
#
# [*template*]
#   Sets the path to the template to use as content for main motd file
#   If defined, main motd file has: content => content("$template")
# [*config*]
#   Hash of configs for template.
#     config => { 
#                footer => [ 'We are watching you!', 'Have a nice day!' ],
#                my_item => 'lorem ipslum',
#     }
#
#   And in the template:
#       <%= @config['my_item'] %>
# [*show_classes*]
#   Adds ehxibition of classes used by puppet.
# [*puppet_info*]
#   Display puppet information.
# [*hardware_info*]
#   Adds hoardware info.
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
  $config =  {
    footer => 'Have Fun!',
  }
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
