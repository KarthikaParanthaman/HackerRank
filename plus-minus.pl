use strict;
use warnings;

my $n=<>;
chomp($n);

my $line=<>;
chomp($line);
my @a=split(',',$line);

my ($pos,$neg,$zero)=(0,0,0);
foreach my $num(@a){
	$pos++ if($num>0);
	$neg++ if($num<0);
	$zero++ if($num==0);
}

printf("%.3f\n",($pos/$n));
printf("%.3f\n",($neg/$n));
printf("%.3f",($zero/$n));