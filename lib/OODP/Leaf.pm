package OODP::Leaf;
use Moose;
use MooseX::FollowPBP;
our $VERSION = '0.01';

extends 'OODP::Component';

sub add             {} 
sub remove          {} 
sub get_child       {} 
sub is_composite    {}

1;
__END__
=head1 NAME

OODP::Leaf - represents primitive objects in the composition.
etc.).

=head1 SYNOPSIS

OODP::Leaf is a class that represents and defines behavior for
primitive objects in the composition. A leaf has no children
(e.g. Rectangle, Line, Text, etc.).

  package MyLeafInterface;
    use Moose;
    extends 'OODP::Leaf';
    has attribute ( is => 'rw', isa => 'Any' );
    sub draw { "magic" } 

  package MyLeaf;
    use Moose;
    extends 'MyLeafInterface';
    has attribute ( default => 'some value' );

  package main;
    use MyLeaf;
    my $obj = MyLeaf->new;
    $obj->draw;

=head1 METHODS

=over 4

=item add()

=item remove()

=item get_child()

=item is_composite()

=back

=head1 SEE ALSO

=over 4

=item L<OODP::Structural::Component>

=item L<OODP::Component>

=item L<OODP::Composite>

=back

=head1 LICENSE AND COPYRIGHT

Copyright 2014 Jeffrey Hayes Anderson.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
=cut
