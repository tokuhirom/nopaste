use inc::Module::Install;
all_from "lib/NoPaste.pm";

license 'unknown';
author  'unknown';

tests 't/*.t t/*/*.t t/*/*/*.t';
requires 'Amon2';
requires 'Amon2::DBI';
requires 'DBD::SQLite';
requires 'Text::Xslate';
requires 'Text::Xslate::Bridge::TT2Like';
requires 'Plack::Middleware::ReverseProxy';
requires 'Time::Piece';
requires 'Data::UUID';
recursive_author_tests('xt');

WriteAll;
