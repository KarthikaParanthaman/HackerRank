

my $n=<>;
chomp($n);

my @a;
for(my $i=0;$i<$n;$i++){
	$a[$i]=<>;
	chomp($a[$i]);
}

for(my $i=0;$i<$n;$i++){
my $negate= ~$a[$i];
print "$negate\n";
}
