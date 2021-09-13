use strict;
use List::Util qw(sum);
my ($n,$m)=split(' ',<STDIN>);
my $i=0;
my @topics;

while($i < $n){
$topics[$i]=<STDIN>;
chomp($topics[$i]);
$i++;
}

my $max=0;
my %maxcnt;
my $or;
my $count=0;
for($i=0;$i<$n;$i++){
	for(my $j=$i+1;$j<$n;$j++){
		$or=$topics[$i]|$topics[$j];
        $or =~ s/0//g;
        $or=length($or);
		if($or >= $max){
			$max=$or;
			$maxcnt{$max}=0 if(not defined $maxcnt{$max});
			$maxcnt{$max}++;
		}
	}
}

print "$max\n$maxcnt{$max}";