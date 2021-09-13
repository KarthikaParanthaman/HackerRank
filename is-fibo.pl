# Enter your code here. Read input from STDIN. Print output to STDOUT
sub isFib{
my $num=$_[0];
my $a=0;
my $b=1;
my $tmp;
    while($b <= $num ){
        if(($a == $num) || ($b == $num)){
            return "IsFibo";
        }
        $tmp=$a;
        $a=$b;
        $b=$tmp+$a;
    }
    return "IsNotFibo";
}

my $NoOfTestcase=<>;
chomp($NoOfTestcase);

my @nos;
my $i=0;

while($i < $NoOfTestcase){
   $nos[$i]=<>; 
   chomp($nos[$i]);
   $i++;
}

$i=0;

while($i < $NoOfTestcase){
   print isFib($nos[$i]);
   print "\n";
   $i++;
}
