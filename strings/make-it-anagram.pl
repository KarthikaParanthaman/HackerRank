use strict;
use warnings;

my $str1=<>;
my $str2=<>;
chomp($str1);
chomp($str2);

my %s;
my @tmp=split('',$str1);
foreach my $c (@tmp){
	if(! defined($s{$c})){
	$s{$c}=1;
	}else{
	$s{$c}++;
	}
}
my $count=0;
@tmp=();
@tmp=split('',$str2);
foreach my $c (@tmp){
	if(defined($s{$c}) && ($s{$c}!=0) ){
	$s{$c}--;	
	}else{
	$count++;
	}

}

foreach my $c (keys%s){
#print "$c $s{$c}\n";
$count+=$s{$c};
}

print $count;