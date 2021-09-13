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
	if($str[$i] =~ /^hackerrank/ && $str[$i] =~ /hackerrank$/){
		print "0\n";
		next;
	}elsif($str[$i] =~ /^hackerrank/){
		print "1\n";
		next;
	}elsif($str[$i] =~ /hackerrank$/){
		print "2\n";
		next;
	}else{
	print "-1\n";
	}


}
