package Foswiki::Contrib::TwitterBootstrapContrib::TWITTERBOOTSTRAP;
use strict;
use warnings;

use Foswiki::Plugins::JQueryPlugin ();
our @ISA = qw( Foswiki::Plugins::JQueryPlugin::Plugin );

use Foswiki::Plugins::JQueryPlugin::Plugin ();
use Foswiki::Contrib::TwitterBootstrapContrib ();

sub new {
    my $class = shift;
    my $session = shift || $Foswiki::Plugins::SESSION;
   
    my $this = $class->SUPER::new( 
        $session,
        name          => 'bootstrap',
        version       => $Foswiki::Contrib::TwitterBootstrapContrib::RELEASE,
        author        => 'twitter',
        homepage      => 'http://twitter.github.com/bootstrap',
        puburl        => '%PUBURLPATH%/%SYSTEMWEB%/TwitterBootstrapContrib/bootstrap',
        documentation => "$Foswiki::cfg{SystemWebName}.TwitterBootstrapContrib",
        summary       => $Foswiki::Contrib::TwitterBootstrapContrib::SHORTDESCRIPTION,
        javascript    => [ "js/bootstrap.min.js" ],
#        css    => [ "css/bootstrap.min.css", "css/bootstrap-responsive.min.css" ]
#I wonder how to make this list JQREQUIRE param / preference / urlparam based..
        css    => [ "css/bootstrap-responsive.min.css", "../bootswatch/spacelab.min.css", '../FontAwesome/css/font-awesome.css' ]
        );
    
    return $this;
}


sub renderCSS {
    my ( $this, $text ) = @_;

    $text =~ s/\.min// if $this->{debug};
    $text .= '?version=' . $this->{version};
    $text =
"<link rel='stylesheet' href='$this->{puburl}/$text' type='text/css' media='all' />\n";

    return $text;
}

sub renderJS {
    my ( $this, $text ) = @_;

    $text =~ s/\.min//
      if ( $this->{debug} );
      
    $text .= '?version=' . $this->{version} if ( $this->{version} =~ '$Rev$' );
    $text =
      "<script type='text/javascript' src='$this->{puburl}/$text'></script>\n";
    return $text;
}

1;
