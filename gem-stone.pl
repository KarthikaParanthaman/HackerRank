# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;


my $NoOfTestcase=<STDIN>;
my $i=0;
my @rocks;


my %GemStone;
my @comps;

while($i<$NoOfTestcase){
$rocks[$i]=<STDIN>;
chomp($rocks[$i]);
@comps=split('',$rocks[$i]);
my %PerRock;
foreach my $elt (@comps){
if(! defined $PerRock{$elt}){
    $PerRock{$elt}=1;
    if(defined $GemStone{$elt}){
    $GemStone{$elt}++;
    }else{
    $GemStone{$elt}=1;
    }
}
}
$i++;
}

my $Cnt=0;
foreach my $key (keys%GemStone){
#	print " $key $GemStone{$key} $NoOfTestcase \n";
    if($GemStone{$key} == $NoOfTestcase){
    $Cnt++;
    }
}
print "$Cnt";


