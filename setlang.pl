#!/usr/bin/env perl

# Warn about undefined variables
use strict;
# Used for language list
use Locale::Language;
# Used for command line arguments
use Getopt::Std;

# Enable the default handling of --help and --version
$Getopt::Std::STANDARD_HELP_VERSION = 1 ;

# The version of this script
our $VERSION = "1.0" ;

# Overwrite separator to read complete files
$/='foobar';

# Help message
sub HELP_MESSAGE {
    print "$0: Required either:\n";
    print "\t-l language : Use ISO-639-2 language code based on language\n" ;
    print "\t-c code : Use three letter ISO-639-2 language code\n" ;
	
} 

# Handle command line argumentsusing Getopt
our($opt_l, $opt_c);
getopts('l:c:');

# Language code to be used, either given by language or directly
my $code = "" ;

# Language given as command line parameter
if (defined $opt_l) {
    my $lang = language2code(lc $opt_l,'alpha-3') ;
    $lang =~ /([[:alpha:]])([[:alpha:]]{2})/ ;
    $code = (uc $1) . $2 ;
    if ($code eq "") {
	print "Language not recognized\n" ;
	exit -1 ;
    }
}
# Language code given as command line parameter
elsif (defined $opt_c) {
    if ($opt_c =~ /([[:alpha:]])([[:alpha:]]{2})/) {
	$code = (uc $1) . $2 ;
    }
    else
    {
	print "Wrong format of language code\n" ;
	exit -1 ;
    }
}
# Neither given -> Help message
else {
    HELP_MESSAGE ;
    exit 0;
}

# Get all GF files in the current directory
opendir my $dir, "." or die "Cannot open directory: $!";
my @files = grep { $_ =~ /.*\.gf$/ } readdir $dir;
closedir $dir;

# Rename files and replace XXX by language code
for my $f (@files) {
    # Read file
    open (my $fh,"<",$f) or die "File not found" ;
    my $file = <$fh> ;
    close($fh);
    # Replace place holder by language code
    $f =~ s/XXX/$code/ ;
    $file =~ s/XXX/$code/g ;
    # write file
    open($fh,">",$f);
    print $fh $file ;
}

