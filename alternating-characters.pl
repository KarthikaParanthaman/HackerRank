# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;

sub manipulate_string{
my $str=$_[0];
my @chars=split('',$str);
my $i=0;
my $len=length($str);
my $count=0;
    while($i < $len){
     if($chars[$i] eq $chars[$i+1]){
     $count++;
     }
    $i++;
    }
    return $count;
}

my $TestCase=<STDIN>;
my @strings; # tostore all strings
my @delcnt;
my $i=0; #for iteration

while($i<$TestCase){
$strings[$i]=<STDIN>;
chomp($strings[$i]);
$delcnt[$i]=manipulate_string($strings[$i]);
$i++;
}

$i=0;
while($i<$TestCase){
print "$delcnt[$i]\n";
$i++;
}
