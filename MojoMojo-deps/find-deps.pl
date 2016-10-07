#!/usr/bin/perl

use strict;
use warnings;

use CPAN::FindDependencies;

my @dependencies = CPAN::FindDependencies::finddeps("MojoMojo");

foreach my $dep (@dependencies) {
    print ' ' x $dep->depth();
    print $dep->name().' ('.$dep->distribution().")\n";
}
