use v6;

class Acme::Meow {

	has Int $!love = 0;
	has Str $!fav = '';

	method pet {
		$!love++;
		$!fav = pick(<milk nip>);
		say ~[self!kitty_status, <purr nuzzle meow>.pick,
			$!love > 15 ?? '<3' !! ''];
	}

	method feed {
		if self.is_sleeping {
			$!love += 0.25
		} else {
			$!love += 0.5
		}
		say ~[self!kitty_status, ['crunch', 'lap lap', ''].pick]
	}

	method is_sleeping {
		0 # cats sleep? They're just pretending.
		  # They're watching you. All the time.
		  # or TODO, if you prefer
	}

	method nip {
		self.feed: 'nip'
	}

	method milk {
		self.feed: 'milk'
	}

	method !kitty_status {
		return 'zZzZ' if self.is_sleeping;
		$!love > 5 ?? '=^_^=' !! '=-_-='
	}

}
