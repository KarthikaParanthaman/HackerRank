use strict;
use warnings;

my $n=<>;
chomp($n);

sub maxsubarray{
	my $aref=$_[0];
	my @a =@{$aref};
	my ($best_r1,$r1,$r2)=($a[0],$a[0],$a[0]);

	for(my $i=1;$i<=$#a;$i++){
		$r1+=$a[$i];
		if($r1 > $best_r1){
		$best_r1=$r1;
		}
		if($r1 <0){
		$r1=0;
		}
		
		if($a[$i]>0){
		$r2+=$a[$i]
		}

	}
return "$best_r1 $r2";
}

my @result;
for(my $i=0;$i<$n;$i++){
	my $len=<>;
	chomp($len);
	my $arr=<>;
	chomp($arr);
	my @a=split(' ',$arr);
	push(@result,maxsubarray(\@a));
}

foreach my $line(@result){
	print "$line\n";
}