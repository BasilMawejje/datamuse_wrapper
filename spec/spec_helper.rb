require "bundler/setup"
require "datamuse_wrapper"
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:each) do
    stub_request(:get, "http://api.datamuse.com/words?ml=ringing%20in%20the%20ears").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Host'=>'api.datamuse.com',
       	  'User-Agent'=>'Ruby'
           }).
         to_return(status: 200, body: "", headers: {})
  end
end
