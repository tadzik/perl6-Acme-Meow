use v6;

#= Our cute, artificial cat (perfect for allergics!)
class Acme::Meow {

	has Int $!love = 0;
	has Str $!fav = '';

    #= pet our kitty
	method pet {
		$!love++;
		$!fav = pick(<milk nip>);
		say ~[self!kitty_status, <purr nuzzle meow>.pick,
			$!love > 15 ?? '<3' !! ''];
	}

    #= feed our kitty
	method feed {
		if self.is_sleeping {
			$!love += 0.25
		} else {
			$!love += 0.5
		}
		say ~[self!kitty_status, ['crunch', 'lap lap', ''].pick]
	}

    #= is our kitty sleeping?
	method is_sleeping {
		False # cats sleep? They're just pretending.
		      # They're watching you. All the time.
		      # or TODO, if you prefer
	}

    #= handy method to feed your cat with a nip
	method nip {
		self.feed: 'nip'
	}

    #= another one to give some milk to our kitty
	method milk {
		self.feed: 'milk'
	}

	method !kitty_status {
		return 'zZzZ' if self.is_sleeping;
		$!love > 5 ?? '=^_^=' !! '=-_-='
	}
}

=begin pod

Additional documentation TBD

=end pod

=begin FLYING-CARROT

Suprised, jnthn?

=end FLYING-CARROT
