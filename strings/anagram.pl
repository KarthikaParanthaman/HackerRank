use strict;
use warnings;

my $tc=<STDIN>;
my @str;
for(my $i=0;$i<$tc;$i++){
	$str[$i]=<STDIN>;
	chomp($str[$i]);
}

sub anagram{
	my $str=$_[0];
	my $count=0;
	my $len=length($str);
	return -1 if(($len%2)==1);
	my $str1=substr($str,0,($len/2));
	my $str2=substr($str,($len/2),($len/2));
	my %hstr1;
	my @astr1=split('',$str1);
	my @astr2=split('',$str2);
	for(my $i=0;$i<=$#astr1;$i++){
		if(! defined($hstr1{$astr1[$i]})){
		$hstr1{$astr1[$i]}=1;
		}else{
		$hstr1{$astr1[$i]}++;
		}
	}
	for(my $i=0;$i<=$#astr2;$i++){
		if(defined($hstr1{$astr2[$i]}) && ($hstr1{$astr2[$i]} != 0)){
		$hstr1{$astr2[$i]}--;
		}else{
		$count++;
		}	
	}
	
	return $count;
}

for(my $i=0;$i<$tc;$i++){
	print anagram($str[$i]);
	print "\n";
}