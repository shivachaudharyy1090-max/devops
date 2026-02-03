#!/usr/bin/perl

my $count = 0;

open(my $fh, "<", "aap.log") or die "File is not working";

while (my $line = <$fh>) {
    $count++ if $line =~ /ERROR/;
}

close($fh);

print "ERROR count: $count\n";

