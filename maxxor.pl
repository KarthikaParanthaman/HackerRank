#!/usr/bin/perl


sub maxXor{
    my ($_l,$_r)=@_;
    my $i; # for iteration
    my $max=0;
    my $value;
    
    for($i=$_l; $i<=$_r; $i++){
        for($j=$i+1; $j<=$_r; $j++){
          $value=$i^$j;
            if($value > $max){
                $max=$value;
            }
        }
    }
   return $max;
}
$_l = <>;


$_r = <>;


$res = maxXor($_l, $_r);
print "$res\n";


