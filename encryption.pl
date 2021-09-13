use strict;
use warnings;
use POSIX;

my $line=<>;
$line =~ s/[\s|\n]//g;
my $len=length($line);
my $sqrt_len=sqrt($len);
my ($r,$c)=(floor($sqrt_len),ceil($sqrt_len));

