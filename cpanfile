requires 'Amon2'                           => '3.20';
requires 'Text::Xslate'                    => '1.4001';
requires 'Text::Xslate::Bridge::TT2Like'   => '0.00008';
requires 'Test::More'                      => '0.98';
requires 'HTML::FillInForm::Lite'          => '1.09';
requires 'String::CamelCase'               => '0.02';
requires 'DBD::SQLite'                     => '1.33';
requires 'Log::Minimal'                    => '0.06';
requires 'Plack::Session'                  => '0.14';
requires 'Plack::Middleware::ReverseProxy' => '0.09';
requires 'Amon2::DBI'                      => '0.06';
requires 'Time::Piece'                     => '1.20';
requires 'Test::WWW::Mechanize::PSGI'      => '0';
requires 'JSON'                            => '2.50';
requires 'Plack::Middleware::Session'      => '0';
requires 'Data::UUID' => 0;
requires 'Module::Find' => 0;

on 'configure' => sub {
    requires 'Module::Build';
    requires 'Module::Build::Pluggable::GithubMeta';
    requires 'Module::Build::Pluggable::CPANfile';
};
