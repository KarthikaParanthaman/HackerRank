use strict;
use warnings;
my $n=<STDIN>;
chomp($n);

my @str;
for(my $i=0;$i<$n;$i++)
{
$str[$i]=<STDIN>;
chomp($str[$i]);
}


for(my $i=0;$i<$n;$i++)
{
	if($str[$i] =~ /^hi [^d]/i){
		print "$str[$i]\n";
	}
}
