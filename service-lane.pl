# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;

my ($LaneLength,$NoofTestcase)=split(' ',<STDIN>);
my @LaneWidth=split(' ',<STDIN>);
my @xy; #entry exit of vehicle
my $min;

my $i=0; # for iteration
while($i<$NoofTestcase){
($xy[$i][0],$xy[$i][1])=split(' ',<STDIN>);
$i++;
}

$i=0;
my ($start,$end);

while($i<$NoofTestcase){
	($start,$end)=($xy[$i][0],$xy[$i][1]);
	$min=$LaneWidth[$start];
	for(my $j=$start; $j<=$end; $j++){
		if($LaneWidth[$j] < $min){
			$min=$LaneWidth[$j];
		 }
	}
	print "$min\n";
	$i++;
}