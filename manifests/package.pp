# == Define: java::package
#
# Install a java package. Useful for installing multiple java versions on a
# single host.
#
# === Parameters
#
# Document parameters here
#
# [*namevar*]
#   If there is a parameter that defaults to the value of the title string
#   when not explicitly set, you must always say so.  This parameter can be
#   referred to as a "namevar," since it's functionally equivalent to the
#   namevar of a core resource type.
#
# [*basedir*]
#   Description of this variable.  For example, "This parameter sets the
#   base directory for this resource type.  It should not contain a trailing
#   slash."
#
# === Examples
#
# Provide some examples on how to use this type:
#
#   example_class::example_resource { 'namevar':
#     basedir => '/tmp/src',
#   }
#
# === Authors
#
# Tom McLaughlin <tmclaughlin@hubspot.com>
#
# === Copyright
#
# Copyright 2013 Hubspot
#
define java::package(
  $package_name,
  $version
) {
  package{ "${$package_name}-${version}":
    ensure => $version,
    name   => $package_name,
  }
}
