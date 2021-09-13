use strict;
use warnings;

my $line=<>;
chomp($line);
my ($d1,$m1,$y1)=split(' ',$line);

$line=<>;
chomp($line);
my ($d2,$m2,$y2)=split(' ',$line);

my $fine=0;
	if($y1 > $y2){
	$fine=10000;
	}elsif($y1 == $y2){
		if($m1 > $m2){
		$fine+=($m1-$m2)*500;
		}
		if($m1 == $m2){
		$fine+=($d1-$d2)*15 if($d1 > $d2);
		}
		}
	}else{
	$fine=0;
	}

	
	print "$fine";