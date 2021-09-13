# Enter your code here. Read input from STDIN. Print output to STDOUT

my $sentence=<>;
chomp($sentence);
$sentence =~ s/\s+//g;
my @letters=split('',lc($sentence));
my %chash;
my $len=0;

foreach my $char (@letters){
	if(not defined $chash{$char}){
		$chash{$char}=1;
		$len++;
	}
}

if($len == 26){
print "pangram";
}else{
print "not pangram";
}