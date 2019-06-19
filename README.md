# DatamuseWrapper

Datamuse Api is a word-finding query engine for developers. `datamuse_wrapper` is a tiny api wrapper for the Datamuse API.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'datamuse_wrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install datamuse_wrapper

## Usage
 `bundle exec irb`

The bundle exec allows irb to load the gems that Bundler knows about, and only the gems Bundler knows about.

`require 'datamuse_wrapper'`

**Find words with a meaning similar to the word 'aeroplane'**

`client = DatamuseWrapper::DatamuseApi.means_like('aeroplane')`

=> [{"word"=>"airplane", "score"=>77455, "tags"=>["syn", "n"]}, {"word"=>"plane", "score"=>76275, "tags"=>["syn", "n"]}, {"word"=>"aircraft", "score"=>61799, "tags"=>["n"]}, . . .

**Find words that sound like the word 'football'**

`client = DatamuseWrapper::DatamuseApi.sounds_like('football')`

=> [{"word"=>"football", "score"=>100, "numSyllables"=>2}, {"word"=>"foot ball", "score"=>100, "numSyllables"=>2}, {"word"=>"footballer", "score"=>90, "numSyllables"=>3}, . . .

**Find words that rhyme with the word 'sticker'**

`client = DatamuseWrapper::DatamuseApi.rhyme_with('sticker')`

=> [{"word"=>"liquor", "score"=>1091, "numSyllables"=>2}, {"word"=>"flicker", "score"=>934, "numSyllables"=>2}, {"word"=>"snicker", "score"=>904, "numSyllables"=>2}, . . .

**Find words that are spelt like the word 'scooter'**

`client = DatamuseWrapper::DatamuseApi.spelt_like('scooter')`

=> [{"word"=>"scooter", "score"=>129864}, {"word"=>"shooter", "score"=>65263}, {"word"=>"scoter", "score"=>65105}, {"word"=>"cooter", "score"=>64859}, {"word"=>"scouter", . . .

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/BasilMawejje/datamuse_wrapper.
