# Enter your code here. Read input from STDIN. Print output to STDOUT

use strict;

sub maxcut{
    my $sum=$_[0];
	my $i;
	my $max=1;
	
    # for($i=1;$i<=$sum;$i++){
        # if($i <= ($sum/2)){
            # $tmp=$i*($sum -$i);
        # }
        # if($tmp > $max){
            # $max=$tmp;
        # }
    # }
	if($sum>1){
		$i=int($sum/2);
		$max=$i*($sum-$i);
	}
    return $max;
}

my $NoOfTestcase=<>;
chomp($NoOfTestcase);

my @sticks;
my $i=0;

while($i < $NoOfTestcase){
   $sticks[$i]=<>; 
   chomp($sticks[$i]);
   $i++;
}

$i=0;
while($i < $NoOfTestcase){
  print maxcut($sticks[$i]);
  print "\n";
  $i++;
}