use strict;
use warnings;

my $n=<>;
chomp($n);

my $line=<>;
chomp($line);

my $k=<>;
chomp($k);

my @c=split('',$line);

for(my $i=0;$i<$n;$i++){
	if($c[$i] =~ /[a-z]/i){
	my $tmp=ord($c[$i])+$k;
	$tmp=97+(($tmp-97)%26) if($c[$i] =~ /[a-z]/);
	$tmp=65+(($tmp-65)%26)if($c[$i] =~ /[A-Z]/);
	$c[$i]=chr($tmp);
	}
}

print @c;
