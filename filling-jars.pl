# Enter your code here. Read input from STDIN. Print output to STDOUT

use strict;
my ($n,$m)=split(' ',<STDIN>);
chomp($m);
my $i=0;
my $sum=0;

while($i < $m){
my ($i1,$i2,$candy)=split(' ',<STDIN>);
$sum=$sum+(($i2-$i1+1)*$candy);
$i++;
}

#average of candies in jar
print int($sum/$n);