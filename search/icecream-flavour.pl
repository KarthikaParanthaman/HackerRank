# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;

sub find_flav{
my ($arrref,$M)=($_[0],$_[1]);
my @cost=@{$arrref};
my ($f1,$f2);

	for(my $i=0; $i<= $#cost; $i++){
	$f1=$cost[$i];
		for(my $j=$i+1; $j<= $#cost;$j++){
			if($cost[$j] == ($M-$f1)){
			return ($i+1,$j+1);
			}
		}
	}
}

my ($T,$M,$N,@cost,@flav,%hcost);
my $i=0;

$T=<>;
while($i < $T){
$M=<>;
$N=<>;
@cost=split(' ',<>);
($flav[$i][0],$flav[$i][1])=find_flav(\@cost,$M);
$i++;
}


$i=0;
while($i < $T){
print "$flav[$i][0] $flav[$i][1]\n";
$i++;
}


