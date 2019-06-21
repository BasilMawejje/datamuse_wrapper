RSpec.describe DatamuseWrapper do
  it "has a version number" do
    expect(DatamuseWrapper::VERSION).not_to be nil
  end

  it "queries words with meaning like 'ringing in the ears'" do
    uri = URI('http://api.datamuse.com/words?ml=ringing+in+the+ears')

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end
