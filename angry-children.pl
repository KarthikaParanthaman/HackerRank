# Enter your code here. Read input from STDIN. Print output to STDOUT

use strict;

sub unfairness{
	my ($arr_ref,$k)=@_;
	my @packets=@{$arr_ref};
	@packets=sort {$a <=> $b} @packets;
	
	my $i=0;
	$k--;
	my $min=$packets[$i+$k]-$packets[$i];
	$i++;
	while(($i+$k) <= $#packets){
		my $diff=$packets[$i+$k]-$packets[$i];
		if($diff<=$min){
			$min=$diff;
		}
		$i++;
	}
	return $min;
}


my $Testcase=<STDIN>;
my $k=<STDIN>;
chomp($Testcase);
chomp($k);
my @packets;
my $i=0;

while($i < $Testcase){
$packets[$i]=<STDIN>;
chomp($packets[$i]);
$i++;
}

print unfairness(\@packets,$k);