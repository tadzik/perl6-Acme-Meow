use v6;
use Test;

use Acme::Meow;

my $c = Acme::Meow.new;
ok $c.can('feed'), 'We can feed the cat';
ok $c.can('pet'), 'We can pet the cat';

lives_ok { $c.feed }, 'feeding works';
lives_ok { $c.pet  }, 'petting works';

done;
