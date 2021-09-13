use strict;
use warnings;

my $n=<>;
my @a;

for(my $i=0;$i<$n;$i++){
my $l=<>;
chomp($l);
my @tmp=split('',$l);
push(@a,\@tmp);
}
my ($i,$j);
for($i=0;$i<$n;$i++){
	for($j=0;$j<$n;$j++){
	if(($i > 0)  &&($i < $n-1) &&($j > 0) &&($j < $n-1)){
	if(($i+1) < $n){
		if($a[$i]->[$j] <= $a[$i+1]->[$j]){
		print "$a[$i]->[$j]";
		next;
		}
	}
	if($i > 0){
		if($a[$i]->[$j] <= $a[$i-1]->[$j]){
		print "$a[$i]->[$j]";
		next;
		}
	}
	if(($j+1) < $n){
		if($a[$i]->[$j] <= $a[$i]->[$j+1]){
		print "$a[$i]->[$j]";
		next;
		}
	}
	if($j > 0){
		if($a[$i]->[$j] <= $a[$i]->[$j-1]){
		print "$a[$i]->[$j]";
		next;
		}
	}
	print "x";
	}else{
	print "$a[$i]->[$j]";
	}

	}
print "\n";
}