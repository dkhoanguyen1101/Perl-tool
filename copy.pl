use strict;
use warning;

chomp(my $input_string = <STDIN>);
my($path_src, $path_dst, $regex) = split(/\s*,\s*/, $input_string);

opendir my $dir, $path_src or die "Cannot open $path_src";
my @file_list = readdir $dir;
my @to_copy = grep(qr/$regex/, @file_list);
for(@to_copy){
    print("$_", "\n");
}