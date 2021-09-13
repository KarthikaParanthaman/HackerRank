use strict;
use warnings;

my $n=<>;
chomp($n);

my $arr=<>;
chomp($arr);

my @a=split(' ',$arr);
my $len=$#a;
my ($i,$j,$key);
for($i=1;$i<=$len;$i++){
$key=$a[$i];
$j=$i-1;
while(($j >=0)&&($a[$j]>$key)){
$a[$j+1]=$a[$j];
$j--;
}
if($a[$j+1]>$key){
$a[$j+1]=$key;
}
print "@a\n";
}

