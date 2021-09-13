# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;
sub comb{
my $str=$_[0];
my @s=sort split('',$str);
$str=join('',@s);
my @cstr;
my $len=length($str);
for(my $i=0; $i<$len; $i++){
for(my $j=$i+1;$j<=$len;$j++){
my $s=substr($str,$i,$j-$i);
push(@cstr,$s);

}
}
return \@cstr;
}
my $T=<>;
my (@len,@str);
my $i=0;
my @cstr;

while($i<$T){
$len[$i]=<>;
$str[$i]=<>;
chomp($str[$i]);
$i++;
}

$i=0;
while($i<$T){
my $aref=comb($str[$i]);
my @a=@{$aref};
foreach my $s (@a){
print "$s\n";
}
$i++;
}
