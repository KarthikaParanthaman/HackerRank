use strict;
use warnings;

my $n=<>;
chomp($n);

sub maxsubarray{
	my $aref=$_[0];
	my @a =@{$aref};
	my ($best_r1,$r1,$best_r2,$r2)=($a[0],$a[0],$a[0],$a[0]);

	for(my $i=1;$i<=$#a;$i++){
		$r1+=$a[$i];

		if($r1 > $best_r1){
		$best_r1=$r1;
		}
		if($a[$i] > $best_r1){
		$best_r1=$a[$i];
		}
		if($a[$i]>0){
		$r2+=$a[$i];
		}
		if($r2 > $best_r2){
		$best_r2=$r2;
		}
		if($a[$i] > $best_r2){
		$best_r2+=$a[$i] if($best_r2 >= 0);
		$best_r2=$a[$i] if($best_r2 < 0)
		}

	}
return "$best_r1 $best_r2";
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