#
# Widget.pm
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

package Choicetool::Widgets::Widget;

use 5.8.0;

use warnings;
use strict;
use diagnostics;

use Choicetool::Base::Debug;
use Choicetool::Base::Trace;
use Choicetool::Data::Tree;

#
# Widget is the base class for all Widgets
#
use vars qw(@ISA);
@ISA = qw(Choicetool::Data::Tree);

sub new ($$)
{
    my $class = shift;
    my $id    = shift;

    assert(defined($class));
    assert(defined($id));

    my $self = $class->SUPER::new($id);

    return bless($self, $class);
}

#
# Methods that MUST NOT be overridden by subclasses
#
sub m4ify_linear_walk ($$)
{
    my $self   = shift;
    my $prefix = shift;
    my $string;

    assert(defined($self));
    assert(defined($prefix));

    $string = "";

    debug("Calling m4ify_body with prefix \`" . $prefix . "'");
    assert(defined($self->can('m4ify_linear_body')));
    $string = $string . $self->m4ify_linear_body($prefix);

    for my $child_ref (@{$self->{CHILDREN}}) {
        if (ref($child_ref)) {
            my $child;
            $child = ${$child_ref};

            my $child_prefix;
            $child_prefix = $self->m4ify_linear_indent();
            assert(defined($child_prefix));

            debug("Calling child m4ify_linear_walk with prefix " .
                  "\`" . $prefix . $child_prefix . "'");
            assert(defined($child->can('m4ify_linear_walk')));
            $string = $string .
                $child->m4ify_linear_walk($prefix . $child_prefix);

        } elsif (!defined($child_ref)) {
            debug("No child");
        } else {
            bug("Unreacheable code");
        }
    }

    return $string;
}

sub m4ify_hierarchical_walk ($$)
{
    my $self   = shift;
    my $prefix = shift;
    my $string;

    assert(defined($self));
    assert(defined($prefix));

    $string = "";

    debug("Calling m4ify_header with prefix \`" . $prefix . "'");
    assert(defined($self->can('m4ify_hierarchical_header')));
    $string = $string . $self->m4ify_hierarchical_header($prefix);

    for my $child_ref (@{$self->{CHILDREN}}) {
        if (ref($child_ref)) {
            my $child;
            $child = ${$child_ref};

            my $child_prefix;
            $child_prefix = $self->m4ify_hierarchical_indent();
            assert(defined($child_prefix));

            debug("Calling child m4ify with prefix " .
                  "\`" . $prefix . $child_prefix . "'");
            assert(defined($child->can('m4ify_hierarchical_walk')));
            $string = $string .
                $child->m4ify_hierarchical_walk($prefix . $child_prefix);

        } elsif (!defined($child_ref)) {
            debug("No child");
        } else {
            bug("Unreacheable code");
        }
    }

    debug("Calling m4ify_footer with prefix \`" . $prefix . "'");
    assert(defined($self->can('m4ify_hierarchical_footer')));
    $string = $string . $self->m4ify_hierarchical_footer($prefix);

    return $string;
}

#
# Methods that COULD be overridden by subclasses
#
sub m4ify_linear_indent ($)
{
    my $self = shift;

    assert(defined($self));

    return "";
}

sub m4ify_hierarchical_indent ($)
{
    my $self = shift;

    assert(defined($self));

    return "";
}

#
# Methods that MUST be overridden by subclasses
#
sub m4ify_linear_body ($$)
{
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));

    #bug("No m4ify_linear_body() method provided by subclass");
    return "";
}

sub m4ify_hierarchical_header ($$)
{
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));

    #bug("No m4ify_hierarchical_header() method provided by subclass");
    return "";
}

sub m4ify_hierarchical_footer ($$)
{
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));

    #bug("No m4ify_hierarchical_footer() method provided by subclass");
    return "";
}

1;
