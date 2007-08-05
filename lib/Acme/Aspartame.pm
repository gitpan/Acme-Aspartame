#!perl
package Acme::Aspartame;
use strict;
use warnings;

INIT
{
    no strict 'refs';
    die "Sugar is bad for you, don'tcha know?" if keys %{"::Filter::"};
}

=head1 NAME

Acme::Aspartame - raise the alarum if a source filter was used

=head1 VERSION

Version 0.01 released 04 Aug 07

=cut

our $VERSION = '0.01';

=head1 SUGAR

Bad!

=head1 ASPARTAME

Good!

=head1 AUTHOR

Shawn M Moore, C<< <sartak at gmail.com> >>

=head1 BUGS

Will not work if you use a source filter outside of the C<Filter> namespace. In
other words, C<Acme::Aspartame> does catch C<Switch> (since C<Switch> brings in
C<Filter::Util::Call>). But it won't catch C<Other::Source::Filter> that
implements its own source filter magic. But that's cause for a new version.

It will give a false positive if you load a C<Filter> but never use it (which
is unlikely, since source filters by definition work at compile time).

It will give a false negative if you use a source filter entirely within
an C<eval>. If that's even possible.

I'm not sure any of these are actually worth fixing.

Please report any bugs through RT: email 
C<bug-acme-aspartame at rt.cpan.org>, or browse to
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Acme-Aspartame>.

=head1 AUTHOR

=head1 COPYRIGHT & LICENSE

Copyright 2007 Shawn M Moore.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;

