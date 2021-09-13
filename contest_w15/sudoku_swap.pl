use strict;
use warnings;

my $n=<>;
chomp($n);



sub check{
 my ($r,$c,$aref)=@_;
 my @a=@{$aref};
 $r*=3;
 $c*=3;
 my ($rend,$cend)=($r+3,$c+3);
 my %sq;
 my $s;
	 for(my$i=$r;$i<$rend;$i++){
		for(my $j=$c;$j<$cend;$j++){
			if(defined($a[$i]->[$j])){
				if(defined($sq{$a[$i]->[$j]})){
					 my($row,$col)=split(',',$sq{$a[$i]->[$j]});
					 #check row
					 my $cnt=0;
					 for(my $k=0;$k<9;$k++){
						if(defined($a[$row]->[$k])){
						 if($a[$row]->[$k] == $a[$i]->[$j]){
						 $cnt++;
						 }
						 }
					 }
					 
					if($cnt != 2){
					 	$s="(".($i+1).",".($j+1).")";
						last;
					}
					#check col
					$cnt=0;
					for(my $k=0;$k<9;$k++){
						if(defined($a[$k]->[$col])){
						if($a[$k]->[$col] == $a[$i]->[$j]){
						$cnt++;
						}
						}
					}
					if($cnt != 2){
						$s="(".($i+1).",".($j+1).")";
						last;
					}else{
						$s="(".($row+1).",".($col+1).")";
						last;
					}
				}else{
					$sq{$a[$i]->[$j]}="$i,$j";
				}
			}
		}
	}	 
 return $s if(defined($s));
 return "0" if(! defined($s));
}

sub findswap{
	my $aref=$_[0];
	my @result;
	for(my $i=0;$i<3;$i++){
		for(my $j=0;$j<3;$j++){
		my $status=check($i,$j,$aref);
			if($status ne "0"){
			push(@result,$status);
			}
		}
	}
	my $broken;
	if (@result){
	$broken=join(' <-> ',@result);
	}else{
	$broken="Serendipity";
	}
return $broken;
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


