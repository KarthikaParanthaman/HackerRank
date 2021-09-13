# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;

sub CountChange{
my $word=$_[0];
my $len=length($word);
my $middle=int($len/2);
$len--;
my @chrs=split('',$word);
my ($first,$last);
my $count=0;

for(my $i=0;$i<$middle;$i++){
#my $tmp=$len-$i;
#print "$chrs[$i],$chrs[$tmp] \n";
($first,$last)=(ord($chrs[$i]),ord($chrs[$len-$i]));
#print "$first,$last \n";
    while($first != $last){
        if($first < $last){
        $last--;
        $count++;
        }else{
        $first--;
        $count++;
        }
    }
#$chrs[$i]=chr($first);
#$chrs[$len-$i]=chr($last);
}
return $count;
}

my $NoofTestcase=<STDIN>;
my $i; #for iteration
my @words;

$i=0;
while($i<$NoofTestcase){
$words[$i]=<STDIN>;
chomp($words[$i]);
$i++;
}

$i=0;
while($i<$NoofTestcase){
print CountChange($words[$i]);
print "\n";
$i++;
}
