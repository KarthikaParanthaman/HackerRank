#!/usr/bin/perl
sub lonelyinteger{
 my $aref=$_[0];
 my @arr=@{$aref};
 my %unique;
 my $res;
foreach my $elt (@arr){
 if(not defined $unique{$elt}){
 $unique{$elt}=1;
 }else{
 $unique{$elt}++;
 }
}

foreach my $elt (keys%unique){
if($unique{$elt} == 1){
$res=$elt;
last;
}
}
return $res;
}
$_a_size = <>;
@_b_split = split(' ',<STDIN>);

$res = lonelyinteger(\@_b_split);
print "$res";
