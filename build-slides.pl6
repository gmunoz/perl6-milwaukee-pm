#!/usr/bin/env perl6

my @input_files = <intro.vroom objects.vroom last.vroom>;

my $first_slide = shift @input_files;
my $out_fname = "slides.vroom";

say slurp $first_slide;

for @input_files -> $fname {
    my @lines = $fname.IO.lines;
    my Bool $in_config = False;
    for @lines {
        if $_ ~~ m/'---- config'/ || $in_config && !~~ m/'----'/ {
            $in_config = True;
            next;
        } elsif $in_config && $_ ~~ m/'----'/ {
            $in_config = False;
        }
        say $_;
    }
}
