use strict;

sub decentnum{
my $num=$_;
my ($q,$r);

if(($num%5 == 0) && ($num%3 ==0)){
return ( '5' x $num );
}
if($num%5 == 0){

}


$q5=$num/5;
$r=$num%5;
if($r > 0){

}


return $dnum;
}

my $testcase=<STDIN>;
my $i=0;
my @digitcnt;

while($i<$testcase){
	$digitcnt[$i]=<STDIN>;
	chomp($digitcnt[$i]);
	$i++;
}

$i=0;
while($i<$testcase){
print decentnum($digitcnt[$i]);
$i++;
}
