use strict;
use warnings;

my $n=<>;
chomp($n);

my @a;
for(my $i=0;$i<$n;$i++){
	my $line=<>;
	chomp($line);
	my @tmp=split(' ',$line);
	push(@a,\@tmp);
}

$n--;
my ($s1,$s2)=(0,0);
for(my $i=0;$i<=$n;$i++){
 $s1+=$a[$i]->[$i];
 $s2+=$a[$i]->[$n-$i];
}

my $diff=abs($s1-$s2);
print $diff;