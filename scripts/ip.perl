#!/usr/bin/perl
 
# Twobits twobit integer dotted quad to reverse hex convertor
#  designed for q&d use to put seeds into pnSeeds in *coins
 
my $ip;
 
if (@ARGV) {
    $ip = shift @ARGV;
} else {
    print "Enter an (dotted quad) ip address: ";
    chomp( $ip = <STDIN> );
}
 
printf "0x%08x\n",  unpack 'N', pack 'C4', reverse split '\.', $ip;
