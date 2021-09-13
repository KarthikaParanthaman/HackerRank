use strict;
use warnings;

my $line=<>;
chomp($line);
 my($r,$c)=split(' ',$line);
 my $result=1;
 if(($r%2) == 0){
 $result=((($r/2)-1)*10)+1;
 }else{
  $result=(($r-1)/2)*10;
 }
 
 $result+=($c-1)*2;
 
 print "$result";