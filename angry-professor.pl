use strict;
use warnings;
my $tc=<STDIN>;
chomp($tc);

my $output="";
for(my $i=0;$i<$tc;$i++){
	my ($n,$k)=split(' ',<>);
	my @time=split(' ',<>);
	my $cnt=0;
	foreach my $t(@time){
		chomp($t);
		#on time arrival
		if($t <= 0){
		$cnt++;
		}
	}
	if($cnt >= $k ){
	$output.="NO\n"; #class occurs
	}else{
	$output.="YES\n"; #no class
	}
}

print "$output";