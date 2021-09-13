use strict;
use warnings;

my $n=<>;
chomp($n);

sub findarray{
	my ($alen,$aref)=@_;
	my @arr=@{$aref};
	my $sum=0;
	my $larr=0;
	my $rarr;
	my $i;
	if($alen ==1){
		return "YES";
	}
	for($i=0;$i<$alen;$i++){
		$sum=$sum+$arr[$i];
	}
	$rarr=$sum;
	for($i=0;$i<$alen;$i++){
		$rarr=$sum-$arr[$i];
	}
}

my $i;
my $alen;
my @a;
my @result;
for($i=0;$i<$n;$i++){
	$alen=<>;
	chomp($alen);
	my $tmp=<>;
	chomp($tmp);
	@a=split(' ',$tmp);
	$result[$i]=findarray($alen,\@a);
}


