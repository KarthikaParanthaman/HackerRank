use strict;
use warnings;

my $n=<>;
chomp($n);

my $line=<>;
chomp($line);
my @a=split(' ',$line);

my $sum=0;
for(my $i=0;$i<$n;$i++){
$sum+=$a[$i];
}

print $sum;