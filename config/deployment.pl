use File::Spec::Functions qw(catfile rel2abs);
use File::Basename qw(dirname);
my $dbpath = catfile(rel2abs(dirname(__FILE__)), '..', 'db', 'deployment.db');
print STDERR "HOME=$ENV{HOME}\nUSER=$ENV{USER}, $<, $dbpath\n";

+{
    'DBI' => [
        "dbi:SQLite:dbname=$dbpath",
        '',
        '',
        +{
            sqlite_unicode => 1,
        }
    ],
    'Text::Xslate' => +{
    },
};
