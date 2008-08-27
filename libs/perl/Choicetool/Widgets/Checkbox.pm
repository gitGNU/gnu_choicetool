#
# Checkbox.pm
#
# Copyright (C) 2007, 2008 Francesco Salvestrini
#                          Alessandro Massignan
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

package Choicetool::Widgets::Checkbox;

use 5.8.0;

use warnings;
use strict;
use diagnostics;

use Choicetool::Base::Debug;
use Choicetool::Base::Trace;
use Choicetool::Widgets::Widget;

use vars qw(@ISA);
@ISA = qw(Choicetool::Widgets::Widget);

sub new ($$)
{
    my $class = shift;
    my $id    = shift;

    assert(defined($class));

    my $self = $class->SUPER::new($id);

    return bless($self, $class);
}

sub title {
    my $self  = shift;
    my $value = shift;

    assert(defined($self));

    if (defined($value)) {
	$self->{TITLE} = $value;
    }

    return $self->{TITLE};
}

sub symbol {
    my $self  = shift;
    my $value = shift;

    assert(defined($self));

    if (defined($value)) {
       $self->{SYMBOL} = $value;
    }

    return $self->{SYMBOL};
}

#
# M4 related methods
#

sub m4ify_body ($$)
{
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));

    return "";
}

sub m4ify_header ($$)
{
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));
    assert(defined($self->id()));
    assert(defined($self->title()));
    assert(defined($self->symbol()));

    return
	$prefix .
	"CT_WIDGETS_CHECKBOX([" .
	$self->id() .
	"],[" .
	$self->title() .
	"],[" .
	$self->symbol() .
	"])\n";
}

sub m4ify_footer ($$)
{
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));

    return "";
}

1;
