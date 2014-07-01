# Expletive Infixation

Adds expletive infixes to ruby method names. Abso-freakin'-lutely!

## Installation

Add this line to your application's Gemfile:

    gem 'expletive_infixation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install expletive_infixation

## Usage

Don't.

Standard usage.

```ruby

require 'expletive_infixation'

a = [1,2,3,4,5]

a.sort_freakin_by! {|n| -n }

# => [5,4,3,2,1]
```


Custom expletive.

```ruby

require 'expletive_infixation'

ExpletiveInfixation.expletive_infix = 'gosh_darn'

a = [1,2,3,4,5]

a.each_with_gosh_darn_index do |n, i|
 # ...
end
```

## Tests

    $ ruby test/test_freakin_case.rb
    Yep, SeriousThing.is_freakin_true?
    Yep, SeriousThing.new.is_freakin_true?
    Yep, SeriousThing.freakin_truthy?
    Yep, SeriousThing.is_freakin_false? went 'undefined method `is_freakin_false?' for SeriousThing:Class'
    Yep, SeriousThing.is_false? went 'undefined method `is_false?' for SeriousThing:Class'
    Yep, SeriousThing.respond_to? :is_freakin_true?
    Yep, SeriousThing.respond_to? :freakin_truthy?
    Yep, SeriousThing.is_gosh_darn_true?
    Yep, SeriousThing.is_freakin_true? went 'undefined method `is_freakin_true?' for SeriousThing:Class'

## Contributing

1. Fork it ( https://github.com/horribleideas/expletive_infixation/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
