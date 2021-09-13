use strict;
use warnings;

my $n=<>;
chomp($n);

my $nos=<>;
chomp($nos);
my @nums=split(' ',$nos);
my $sum=0;
for(my $i=0;$i<$n;$i++){
$sum=$sum+$nums[$i];
}
print $sum;