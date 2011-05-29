package NoPaste::Web::Dispatcher;
use strict;
use warnings;
use Amon2::Web::Dispatcher::Lite;
use Data::UUID;

my $uuid = Data::UUID->new();

any '/' => sub {
    my ($c) = @_;
    $c->render('index.tt');
};

post '/post' => sub {
    my ($c) = @_;
    if (my $body = $c->req->param('body')) {
        my $entry_id = $uuid->create_str();
        $c->dbh->insert(
            entry_id => $entry_id,
            body  => $body,
            ctime => time(),
        );
        $c->redirect("/entry/$entry_id");
    } else {
        $c->redirect('/');
    }
};

1;
