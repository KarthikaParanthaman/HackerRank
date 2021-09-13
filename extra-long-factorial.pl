use strict;
use warnings;
use Math::BigInt;



my $n=<>;
chomp($n);



my $sum=Math::BigInt->new(1);
for(my $i=1;$i<=$n;$i++){
$sum*=$i;
}
print $sum;