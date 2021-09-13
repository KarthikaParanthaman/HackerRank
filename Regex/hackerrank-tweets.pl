use strict;
use warnings;
my $n=<STDIN>;
chomp($n);

my @tweets;
for(my $i=0;$i<$n;$i++)
{
$tweets[$i]=<STDIN>;
chomp($tweets[$i]);
}

my $count=0;
for(my $i=0;$i<$n;$i++)
{
	++$count if($tweets[$i] =~ /hackerrank/i);
}
print $count;