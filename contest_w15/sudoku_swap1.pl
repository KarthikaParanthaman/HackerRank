use strict;
use warnings;

my $n=<>;
chomp($n);

sub checkduplicate {
my ($rc,$index,$aref)=@_;
my @a=@{$aref};
my %sudoku;

		for(my $i=0;$i<9;$i++){
		# check element exist
		if(defined($a[$index]->[$i])){
		# row check
			if($rc eq "row"){
				if(! defined($sudoku{$a[$index]->[$i]})){
					$sudoku{$a[$index]->[$i]}=1 ;
				}else{
					$sudoku{$a[$index]->[$i]}++;
					if($sudoku{$a[$index]->[$i]} == 2){
						return $i;
					}
				}
			}
		# column check
			if($rc eq "col"){
				if(! defined($sudoku{$a[$i]->[$index]})){
					$sudoku{$a[$i]->[$index]}=1 ;
				}else{
					$sudoku{$a[$i]->[$index]}++;
					if($sudoku{$a[$i]->[$index]} == 2){
						return $i;
					}
				}
			}
		}
		}
return "0";
}

sub findswap{
	my $aref=$_[0];
	my $result;
	my $status;
	for(my $i=0;$i<9;$i++){
		$status=checkduplicate("row",$i,$aref);
			if($status ne "0"){
			$status=checkduplicate("col",$status,$aref);
				if($status ne "0"){
					 if(! defined($result)){
					 $result="($i,$status)";
					 }else {
					 $result.=" <-> ($i,$status)";
					 }
				}
			}
	}
	return "Serendipity" if(! defined($result));
	return $result;
}

my $swap;
my $final_result="";
for(my $j=0;$j<$n;$j++){
my @a;
$swap="";
	for(my $i=0;$i<9;$i++){
		my $line=<>;
		chomp($line);
		my @tmp=split(' ',$line);
		push(@a,\@tmp);
		$swap=findswap(\@a);
	}
	$final_result.="Case #".($j+1).":\n$swap\n";
	
}
print $final_result;


