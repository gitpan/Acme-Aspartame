#!perl
use strict;
use warnings;
use Test::More tests => 7;

my @tests =
(
    ["use Acme::Aspartame"                         => 1],
    ["use Bloom::Filter; use Acme::Aspartame"      => 1],

    ["use Filter::Util::Call; use Acme::Aspartame" => 0],
    ["use Acme::Aspartame; use Filter::Util::Call" => 0],
    ["use Filter::Simple; use Acme::Aspartame"     => 0],
    ["use Acme::Aspartame; use Filter::Simple"     => 0],
    ["use Switch; use Acme::Aspartame"             => 0],
);

for (@tests)
{
    my ($program, $result) = @$_;

    # yes I know this is assuming a few things from your system. bugger off :)
    system(qq{$^X -Ilib -e '$program' 2>/dev/null});

    my $succeeded = $? ? 0 : 1;
    is($succeeded, $result, $program);
}

