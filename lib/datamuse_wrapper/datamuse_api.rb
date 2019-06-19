require 'httparty'

module DatamuseWrapper
  class DatamuseApi
    include HTTParty

    base_uri 'api.datamuse.com/words?'

    def self.means_like(phrase)
      phrase = phrase.split.join('+')
      response = get("ml=#{phrase}")
      response.parsed_response
    end

    def self.sounds_like()

    end

    def self.rhyme_with()

    end

    def self.spelt_like()

    end
  end
end
