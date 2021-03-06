# -*- perl -*-

#
# Environment.pm
#
# Copyright (C) 2008, 2009 Francesco Salvestrini
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

package Choicetool::OS::Environment;

use 5.8.0;

use warnings;
use strict;
use diagnostics;

use Choicetool::Base::Debug;
use Choicetool::Base::Trace;

BEGIN {
    use Exporter ();
    our ($VERSION, @ISA, @EXPORT);

    @ISA    = qw(Exporter);
    @EXPORT = qw(&environment_get
                 &environment_set
                 &environment_remove
                 &environment_clear
                 &environment_foreach);
}

sub environment_foreach ($)
{
    my $callback_ref = shift;

    assert(defined($callback_ref));

    for my $key (keys(%ENV)) {
        $callback_ref->($key, $ENV{$key});
    }
}

sub environment_get ($)
{
    my $variable = shift;

    assert(defined($variable));

    return $ENV{$variable};
}

sub environment_remove ($)
{
    my $variable = shift;

    assert(defined($variable));

    delete $ENV{$variable};

    return 1;
}

sub environment_set ($)
{
    my $variable = shift;
    my $value    = shift;

    assert(defined($variable));
    #assert(defined($value));

    $ENV{$variable} = $value;

    return 1;
}

sub environment_clear ($)
{
    %ENV = ();
}

1;
