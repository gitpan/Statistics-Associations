use strict;
use Statistics::Associations;
use Test::More tests => 1;

my $asso = Statistics::Associations->new;
while (<DATA>) {
    chomp $_;
    my ( $sex, $like_or_unlike ) = split( /\s/, $_ );
    $asso->make_matrix( $sex, $like_or_unlike, 1 );
}

# cramer() test
{
    my $matrix      = $asso->matrix;
    my $cramer = $asso->cramer($matrix);
    is( $cramer, '0.100503781525921', 'cramer() returns correct data' );
}

__DATA__
man like
man unlike
woman like
man unlike
woman like
man like
woman unlike
woman unlike
man like
man unlike
woman unlike
man like
man like
woman like
woman like
man like
woman unlike
woman like
man unlike
woman unlike