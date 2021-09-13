use strict;
use warnings;
my $n=<STDIN>;
chomp($n);

my @pan_nos;
for(my $i=0;$i<$n;$i++)
{
$pan_nos[$i]=<STDIN>;
chomp($pan_nos[$i]);
}
for(my $i=0;$i<$n;$i++)
{
	if($pan_nos[$i] =~ /[A-Z]{5}[0-9]{4}[A-Z]{1}/){
		print "YES\n";
	}else{
		print "NO\n";
	}
}