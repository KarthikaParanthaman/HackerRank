use strict;
use warnings;
my $n=<STDIN>;
chomp($n);

my @tag;
my %tags;
my $tagref;
sub detect_tag{
	my ($t,$tref)=@_;
	chomp($t);
	my %tags=%{$tref};
	if($t =~ /\[.*\]\(http:\/\/.*\)/g){
	$tags{"a"}=1;
	}
	if($t =~ /<\\(\w+)\s*>/){
#	if($t =~ /<\\(\w+)>/g){
	$tags{$1}=1;
	}
	return \%tags;
}

for(my $i=0;$i<$n;$i++)
{
$tag[$i]=<STDIN>;
$tagref=detect_tag($tag[$i],\%tags);
%tags=%{$tagref};
}


foreach my $t (keys%tags)
{
print "$t;";
}
