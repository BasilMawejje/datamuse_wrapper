require 'pry'

RSpec.describe DatamuseWrapper do
  before(:each) do
    @uri = URI('http://api.datamuse.com/words?ml=ringing+in+the+ears')
  end

  it "has a version number" do
    expect(DatamuseWrapper::VERSION).not_to be nil
  end

  it "queries words with meaning like 'ringing in the ears'" do
    response = Net::HTTP.get(@uri)
    expect(response).to be_an_instance_of(String)
  end

  after(:all) do
    @uri = nil
  end
end
