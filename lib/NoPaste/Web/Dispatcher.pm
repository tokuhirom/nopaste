package NoPaste::Web::Dispatcher;
use strict;
use warnings;
use Amon2::Web::Dispatcher::Lite;
use Data::UUID;

my $uuid = Data::UUID->new();

any '/' => sub {
    my ($c) = @_;
    my ($entries_cnt) = $c->dbh->selectrow_array(q{SELECT COUNT(*) FROM entry;});
    $c->render('index.tt', {
        entries_cnt => $entries_cnt,
    });
};

post '/post' => sub {
    my ($c) = @_;

    if (my $body = $c->req->param('body')) {
        my $entry_id = $uuid->create_str();
        $c->dbh->insert(
            entry => {
                entry_id => $entry_id,
                body     => $body,
                ctime    => time(),
            }
        );
        $c->redirect("/entry/$entry_id");
    } else {
        $c->redirect('/');
    }
};

get '/entry/{entry_id}' => sub {
    my ($c, $args) = @_;

    my $row = $c->dbh->selectrow_hashref(q{SELECT * FROM entry WHERE entry_id=?}, {}, $args->{entry_id});
    return $c->render('show.tt', $row);
};

1;
