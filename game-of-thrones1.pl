# Enter your code here. Read input from STDIN. Print output to STDOUT
use strict;

sub isPalindrome{
    my $string=$_[0];
    my $len=length($string);
    my @chars=split('',$string);
    my %charcount;
    my $isPalindrome=1;
    my $isodd=0;
    
    foreach my $char (@chars){
        if($charcount{$char}){
            $charcount{$char}++;
        }else{
            $charcount{$char}=1;
        }    
    }
	

    foreach my $char (keys%charcount){
        if($len%2 == 0) {
            if($charcount{$char}%2 != 0){
            $isPalindrome=0;
            last;
            }
        }else{
            if($charcount{$char}%2 != 0){
                $isodd++;
            }
			if($isodd > 1){
                $isPalindrome=0;
                last;
            }
        }
    }
 if($isPalindrome){
    return "YES";
 }else{
    return "NO";
 }
}
my $string=<>;
chomp($string);

print isPalindrome($string);