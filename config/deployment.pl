print STDERR "HOME=$ENV{HOME}\nUSER=$ENV{USER}, $<\n";
print `env`;

+{
    'DBI' => [
        "dbi:SQLite:dbname=$ENV{HOME}/deployment.db",
        '',
        '',
        +{
            sqlite_unicode => 1,
        }
    ],
    'Text::Xslate' => +{
    },
};
