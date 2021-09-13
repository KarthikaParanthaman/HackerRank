# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;

my $NoTestCase=<STDIN>; # number of cycles
my @Cycles; # cycles list
my $i =0 ; # for iteration
my $height;

sub findHeight{
    my $cycle=$_[0];
    my $height=1;
	my $i=1;
        while($i <= $cycle){
            if(($i % 2) == 0){
			$height++;
			#print "$i - $height \n";
            }else{
			
            $height*=2;
			#print "$i  - $height \n";
            }
        $i++;
        }
    return $height;
}

while($i < $NoTestCase){
    $Cycles[$i]=<STDIN>;
	chomp($Cycles[$i]);
    $i++;
}

$i=0;
while($i < $NoTestCase){
    $height=findHeight($Cycles[$i]);
    print "$height \n";
    $i++;
}