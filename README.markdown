# Message of the day #

This is a simple Puppet module to manage the Message of the day on unix
operating systems.

# Author #

 * Jeff McCune <jeff@puppetlabs.com>
 * [GitHub Project](https://github.com/jeffmccune/jeffmccune-motd)
 * [Blog](http://www.metamachine.net)
 * [@0xEFF](http://twitter.com/0xEFF)

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
    
    -------------------------------------------------

# Getting Started #

In your puppet manifests, site.pp or in the Dashboard or other ENC:

    include motd

