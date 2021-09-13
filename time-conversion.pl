use strict;
use warnings;

my $time1=<>;
chomp($time1);
my @h=split(':',$time1);
if(($time1 =~ /AM$/) && ($h[0] ==12)){
$h[0]=0;
}
if(($time1 =~ /PM$/) && ($h[0] !=12)){
	$h[0]+=12;
}
$h[0]="0$h[0]" if(length($h[0])==1);
$time1 =~ s/(\d+):/$h[0]:/;
$time1 =~ s/[A|P]M//;
print $time1;

