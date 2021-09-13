use strict;
use warnings;

my $n=<>;
chomp($n);

my $arr=<>;
chomp($arr);

my @a=split(' ',$arr);
my $len=$#a;

my $key=$a[$len];
my $i=$len-1;
while(($a[$i]>$key) && ($i>=0)){
	$a[$i+1]=$a[$i];
	print "@a\n";
	$i--;
}
	$a[$i+1]=$key;
	print "@a\n";

