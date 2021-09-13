use strict;
use warnings;
my $n=<STDIN>;
chomp($n);

my %email;
my $line;
for(my $i=0;$i<$n;$i++)
{
$line=<STDIN>;
while($line =~ /([\.\w+]+\@\w+[\.\w+]+)/g){
my $key=$1;
chomp($key);
chop($key) if($key =~ /\.$/);
$email{$key}=1;
}
}
my @uemail=sort keys%email;


my $str=join(';',@uemail);
print "$str";



