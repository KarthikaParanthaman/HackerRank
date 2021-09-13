use strict;
use warnings;
my $n=<STDIN>;
chomp($n);

my @ph_no;
for(my $i=0;$i<$n;$i++)
{
$ph_no[$i]=<STDIN>;
chomp($ph_no[$i]);
}


for(my $i=0;$i<$n;$i++)
{
	if($ph_no[$i] =~ /([0-9]{1,3})[\s-]{1}([0-9]{1,3})[\s-]{1}([0-9]{4,10})/i){
	print "CountryCode=$1,LocalAreaCode=$2,Number=$3\n";
	}
}
