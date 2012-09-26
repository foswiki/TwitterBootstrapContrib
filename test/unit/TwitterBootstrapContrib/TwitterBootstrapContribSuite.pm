package TwitterBootstrapContribSuite;

use Unit::TestSuite;
our @ISA = qw( Unit::TestSuite );

sub name {
    'TwitterBootstrapContribSuite';
}

sub include_tests {
    qw(TwitterBootstrapContribTests);
}

1;
