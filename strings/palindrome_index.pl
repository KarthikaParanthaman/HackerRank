use strict;
my $tc=<STDIN>;
chomp($tc);

my @strings;
for(my $i=0;$i<$tc;$i++){
	my $str=<STDIN>;
	chomp($str);
	push(@strings,$str);
}

sub get_palindrome{
	my $str=$_[0];
	my @chrs=split('',$str);
	my $last=length($str)-1;
	for(my $j=0;$j<$last;$j++){
		if($chrs[$j] ne $chrs[$last]){
			if(($chrs[$j+1] eq $chrs[$last]) && ($chrs[$j+2] eq $chrs[$last-1])){
			return $j;
			}
			if(($chrs[$j] eq $chrs[$last-1]) && ($chrs[$j+1] eq $chrs[$last-2])){
			return $last;
			}
		}
		$last--;
	}
return -1;
}

for(my $i=0;$i<$tc;$i++){
print get_palindrome($strings[$i]);
print "\n";
}