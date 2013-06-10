package NoPaste;
use strict;
use warnings;
use parent qw/Amon2/;
our $VERSION='0.01';
use 5.008001;

use Amon2::Config::Simple;
sub load_config { Amon2::Config::Simple->load(shift) }

__PACKAGE__->load_plugin(qw/DBI/);

1;
__END__

=head1 NAME

NoPaste - No paste things to IRC.

=head1 AUTHOR

Tokuhiro Matsuno E<lt>tokuhirom AAJKLFJEF@ GMAIL COME<gt>

