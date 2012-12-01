# Message of the day #

This is a simple Puppet module to manage the Message of the day on unix
operating systems.

This is Ryan's fork of Jeff McCune's work. Code will most likely be ported
upstream once a few rounds of functionality are built and tested. It could
also potentially replace the puppetlabs-motd module so please offer feedback
now!

# Author #

 * Jeff McCune <jeff@puppetlabs.com>
 * Ryan Coleman <ryan@puppetlabs.com> (contributor)
   - ryancoleman on the #puppet Freenode IRC channel

# Sample #

    -------------------------------------------------
    Welcome to the host named vagrant-rhel6-64
    RedHat 6.0 x86_64
    -------------------------------------------------
    Puppet: 2.6.6
    Facter: 1.5.8
    
    FQDN: vagrant-rhel6-64.puppetlabs.lan
    IP:   10.0.2.15
    
    Processor: Intel(R) Core(TM)2 Duo CPU     P8800  @ 2.66GHz
    Memory:    491.56 MB

    The following classes have been declared on this node
    during the most recent Puppet run against the Puppet
    Master located at centos6.puppetlabs.vm.
    - settings
    - default
    - motd
    -------------------------------------------------

# Getting Started #

In your puppet manifests, site.pp or in the Dashboard or other ENC:

    include motd

By default, the message of the day will include information about the
classes declared on the node during the most recent Puppet run. If this
is not desirable, declare the motd class with the parameter 'show_classes'
set to 'false'.

