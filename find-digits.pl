# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;

sub divnum{
    my $num=$_[0];
	my @digits=split('',$num);
#    my $_digit;
#    my $_tmp=$num;
    my $count=0;
    
	foreach my $digit (@digits){
        if(int($digit)){
		  if(int($num%$digit) == 0){
			$count++;
		  }
        }
	}
	# while($_tmp > 0){
    # $_digit=int($_tmp%10);
    # $_tmp=int($_tmp/10);
		# if(int($num%$_digit) == 0){
			# $count++;
		# }
    # }
	
    return $count;
}
my $NoOfTestcase=<>;
chomp($NoOfTestcase);

my @nos;
my $i=0;

while($i < $NoOfTestcase){
   $nos[$i]=<>; 
   chomp($nos[$i]);
   $i++;
}

$i=0;

while($i < $NoOfTestcase){
   print divnum($nos[$i]);
   print "\n";
   $i++;
}
