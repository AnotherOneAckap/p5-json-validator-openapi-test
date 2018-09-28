use strict;
use warnings;

use Test::Simple tests => 1;

use lib 'local/lib/perl5';

use OpenAPI::Client;

my $client;

eval { $client = OpenAPI::Client->new("test-spec.json") };

if ( $@ ) {
	warn $@;
}

ok ref $client, 'Client created';
