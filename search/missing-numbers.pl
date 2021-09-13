use strict;
use warnings;

my $n=<STDIN>;
chomp($n);
my @a=split(' ',<STDIN>);

my $m=<STDIN>;
chomp($m);
my @b=split(' ',<STDIN>);


my %ah;
for(my $i=0;$i<$n;$i++)
{
	chomp($a[$i]);
	if(! defined($ah{$a[$i]})){
	$ah{$a[$i]}=1;
	next;
	}else{
	$ah{$a[$i]}++;
	}
	
}


my @melt;
my %missedelt;
for(my $i=0;$i<$m;$i++)
{
	chomp($b[$i]);
	if(! defined($ah{$b[$i]})){
		$missedelt{$b[$i]}=1;
			#print "$b[$i] ";
	}else{
	$ah{$b[$i]}--;
	}
}


foreach my $elt (keys%ah){
	if($ah{$elt} != 0){
	$missedelt{$elt}=1 if(! defined($missedelt{$elt}));
	#print "$elt ";
	}
}
@melt=keys%missedelt;
@melt=sort {$a <=> $b}@melt;
print "@melt";





