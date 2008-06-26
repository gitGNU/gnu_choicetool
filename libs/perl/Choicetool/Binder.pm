#
# Binder.pm
#
# Copyright (C) 2007, 2008 Francesco Salvestrini
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

package Choicetool::Binder;

use 5.8.0;

use warnings;
use strict;
use diagnostics;

use Choicetool::Base::Debug;
use Choicetool::Base::Trace;
use Choicetool::Data::Tuple;

sub new ($)
{
    my $class = shift;

    assert(defined($class));

    my $self = { };

    $self->{RULE2UI} = { };
    $self->{UI2RULE} = { };

    bless $self, $class;

    return $self;
}

sub add ($$$)
{
    my $self    = shift;
    my $rule_id = shift;
    my $ui_id   = shift;

    assert(defined($self));
    assert(defined($rule_id));
    assert(defined($ui_id));

    if (defined($self->{RULE2UI}->{$rule_id})) {
	#debug("Rule id `" . $rule_id . "' already bound");
	return 0;
    }

    if (defined($self->{UI2RULE}->{$ui_id})) {
	#debug("UI id `" . $rule_id . "' already bound");
	return 0;
    }

    $self->{RULE2UI}->{$rule_id} = $ui_id;
    $self->{UI2RULE}->{$ui_id}   = $rule_id;

    return 1;
}

sub remove ($$$)
{
    my $self    = shift;
    my $rule_id = shift;
    my $ui_id   = shift;

    assert(defined($self));
    assert(defined($rule_id));
    assert(defined($ui_id));

    if (!defined($self->{RULE2UI}->{$rule_id})) {
	#debug("Rule id `" . $rule_id . "' not bound");
	return 0;
    }

    if (!defined($self->{UI2RULE}->{$ui_id})) {
	#debug("UI id `" . $rule_id . "' not bound");
	return 0;
    }

    $self->{RULE2UI}->{$rule_id} = undef;
    $self->{UI2RULE}->{$ui_id}   = undef;

    return 0;
}

sub ispresent ($$$)
{
    my $self    = shift;
    my $rule_id = shift;
    my $ui_id   = shift;

    assert(defined($self));
    assert(defined($rule_id));
    assert(defined($ui_id));

    if (!defined($self->{RULE2UI}->{$rule_id})) {
	return 0;
    }

    if (!defined($self->{UI2RULE}->{$ui_id})) {
	return 0;
    }

    if (($self->{RULE2UI}->{$rule_id} != $ui_id) ||
	($self->{RULE2UI}->{$ui_id}   != $rule_id)) {
	return 0;
    }

    return 1;
}

sub rule2ui ($)
{
    my $self = shift;
    my $id   = shift;

    assert(defined($self));
    assert(defined($id));

    return $self->{RULE2UI}->{$id};
}

sub ui2rule ()
{
    my $self = shift;
    my $id   = shift;

    assert(defined($self));
    assert(defined($id));

    return $self->{UI2RULE}->{$id};
}

1;
