#!perl -w


use strict;
use warnings;

#
# on that damn Windows SUA it insists on having *.exe
# Why can't a giant like Microsoft not have a sound
# POSIX-ish subsystem and a decent shell?
# Its the same sh*t like in Windows 95.
# They've done barely anything in almost 20 years.
#
my $exe = "";
$exe = ".exe" unless defined $ENV{SHELL} and length $ENV{SHELL} > 0;

my $version = qx{git log --oneline | wc -l};
print <<XXX;
-- automatically created with $0
-- based on the number of snapshots
-- in the current branch
package frege.Version where
    version = $version
XXX
