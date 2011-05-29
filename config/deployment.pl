print "$ENV{HOME}\n$ENV{USER}\n";

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
