# Enter your code here. Read input from STDIN. Print output to STDOUT

use strict;
my $NoOfTestCase=<STDIN>;
chomp($NoOfTestCase);

my @choc;
my $i;
my @chocolates;

for($i=0;$i<$NoOfTestCase;$i++){
($choc[$i][0],$choc[$i][1],$choc[$i][2])=split(' ',<STDIN>);
my ($Q,$R)=(0,0);
my $tc=0;
	do{
		#print "$choc[$i][0] $choc[$i][1]\n";
		$R=int($choc[$i][0]%$choc[$i][1]) if($Q != 0);
		$Q=int($choc[$i][0]/$choc[$i][1]);
		$tc+=$Q;
		$choc[$i][0]=$Q+$R;
		$choc[$i][1]=$choc[$i][2];
	}while((int($choc[$i][0]/$choc[$i][1])) > 0);
push(@chocolates,$tc);
}

for($i=0;$i<$NoOfTestCase;$i++){
	print "$chocolates[$i]\n";
}