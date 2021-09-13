# Enter your code here. Read input from STDIN. Print output to STDOUT

use strict;
my $Testcase=<STDIN>;
my $i=0;
my @num;

while($i < $Testcase){
($num[$i][0],$num[$i][1])=split(' ',<STDIN>);
chomp($num[$i][0]);
chomp($num[$i][1]);
$i++;
}

$i=0;
while($i < $Testcase){
my ($a,$b)=(int(sqrt($num[$i][0])),int(sqrt($num[$i][1])));
my $sqrnum=$b-$a;
print "$sqrnum\n";
$i++;;
}