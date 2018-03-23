#!/usr/bin/perl
require 5.008_008;
use warnings;
use strict;
use utf8;

#hourglass dimensions, min 3x3
my $hg_dim = {
    'x' => 5, #width, must be odd
    'y' => 4, #height
};

$hg_dim->{wdht} = $hg_dim->{x}-1; #i
$hg_dim->{hght} = $hg_dim->{y}-1; #j
$hg_dim->{cntr} = sprintf("%u", $hg_dim->{x}/2);

my $arr = [];
while(<STDIN>){
    chomp;
    push $arr, [split(' ', $_)];
}

# ...or $#{$arr-$hg_dim-1>[0]}+1 - $hg_dim-1
my $max_x = (scalar @{$arr->[0]}) - ($hg_dim->{wdht});
my $max_y = (scalar @{$arr}) - ($hg_dim->{hght});

# for neg nums, or add $sum on array and sort it
my $max_sum = -1000;

for (my $y = 0; $y < $max_y; $y++){
    for (my $x = 0; $x < $max_x; $x++){
        my $sum = 0;
        for (my $i = $x; $i <= $x+$hg_dim->{wdht}; $i++){
            $sum += $arr->[$y]->[$i]; #upper row
            $sum += $arr->[$y+$hg_dim->{hght}]->[$i]; #lowest row
        }
        for (my $j = $y+1; $j < $y+$hg_dim->{hght}; $j++){
            $sum += $arr->[$j]->[$x+$hg_dim->{cntr}]; #column
        }
        $max_sum = ($sum > $max_sum) ? $sum : $max_sum;
    }
}

print $max_sum, $/;

=head1 TEST MATRIX
1 1 1 0 0 0 1
0 1 0 0 0 0 0
1 1 1 0 0 0 1
0 0 7 4 4 0 3
0 0 0 2 0 0 5
4 4 4 2 4 0 0
1 6 3 4 0 8 2
4 4 4 0 0 0 1
=cut
