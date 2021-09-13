# Enter your code here. Read input from STDIN. Print output to STDOUT

my ($n,$m)=split(' ',<STDIN>);
chomp($m);

@a=split(' ',<STDIN>);
@b=split(' ',<STDIN>);
@c=split(' ',<STDIN>);
unshift(@a,1);
unshift(@b,1);
unshift(@c,1);

for(my $i=1;$i<=$m;$i++){
    for(my $j=1;$j<=$n;$j++){
     if(($j%$b[$i]) == 0){
             $a[$j]=$a[$j]*$c[$i];
     }
    }
}
shift(@a);
print "@a";
