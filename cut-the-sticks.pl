# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;
use List::Util qw(min);

sub min_sticks{
my @sticks=@_;
my $min=1000;
foreach my $stick (@sticks){
	if(($stick < $min) && ($stick > 0)){
		$min=$stick;
	}
}
return $min;
}

my $NoOfTestcase=<STDIN>;
my @sticks=split(' ',<STDIN>);
my @sticks_cut;
my $j;


do{
$j=$NoOfTestcase;
my $i=0;
my $cnt=0;
my $minlen=min_sticks(@sticks);
while($i <= $#sticks){
    if($sticks[$i]>=$minlen){
    $sticks[$i]-=$minlen;
    $cnt++;
    }
    $j-=1 if($sticks[$i] == 0);
$i++;
}
print "$cnt\n";
}while($j>0)