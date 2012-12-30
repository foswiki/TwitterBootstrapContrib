# ---+ Extensions
# ---++ TwitterBootstrapContribPlugin

# ---+ Extensions
# ---++ JQueryPlugin
# ---+++ Extra plugins
# **STRING**
$Foswiki::cfg{JQueryPlugin}{Plugins}{bootstrap}{Module} = 'Foswiki::Contrib::TwitterBootstrapContrib::TWITTERBOOTSTRAP';
# **BOOLEAN**
$Foswiki::cfg{JQueryPlugin}{Plugins}{bootstrap}{Enabled} = 1;

# ---+++ Extra themes

# **STRING**
$Foswiki::cfg{JQueryPlugin}{Themes}{BootstrapSkinTheme}{Url} = '$Foswiki::cfg{PubUrlPath}/$Foswiki::cfg{SystemWebName}/TwitterBootstrapContrib/jquery-ui/bootstrap/bootstrap.min.css';

# **BOOLEAN**
$Foswiki::cfg{JQueryPlugin}{Themes}{BootstrapSkinTheme}{Enabled} = 1;

1;
