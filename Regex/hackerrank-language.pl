use strict;
use warnings;
my $n=<STDIN>;
chomp($n);

my @str;
for(my $i=0;$i<$n;$i++)
{
$str[$i]=<STDIN>;
chomp($str[$i]);
}

my @lang=split(':',":C:CPP:JAVA:PYTHON:PERL:PHP:RUBY:CSHARP:HASKELL:CLOJURE:BASH:SCALA:ERLANG:CLISP:LUA:BRAINFUCK:JAVASCRIPT:GO:D:OCAML:R:PASCAL:SBCL:DART:GROOVY:OBJECTIVEC:");

for(my $i=0;$i<$n;$i++)
{
my ($trash,$l)=split(' ',$str[$i]);
chomp($l);
	if(grep {$l eq $_} @lang){
		print "VALID\n";
	}else{
		print "INVALID\n";
	}
}
