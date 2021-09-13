use strict;
use warnings;
my $n=<STDIN>;
chomp($n);

my @uno;
for(my $i=0;$i<$n;$i++)
{
$uno[$i]=<STDIN>;
chomp($uno[$i]);
}
for(my $i=0;$i<$n;$i++)
{
	if($uno[$i] =~ /^[a-z]{0,3}[0-9]{2,8}[A-Z]{3,}$/){
		print "VALID\n";
	}else{
		print "INVALID\n";
	}
}