require 'httparty'

module DatamuseWrapper
  class DatamuseApi
    include HTTParty

    base_uri 'api.datamuse.com/words?'

    def self.means_like(phrase)
      phrase = phrase.split.join('+')
      response = get("ml=#{phrase}").parsed_response
    end

    def self.sounds_like(word)
      repsonse = get("sl=#{word}").parsed_response
    end

    def self.rhyme_with(word)
      response = get("rel_rhy=#{word}").parsed_response
    end

    def self.spelt_like(word)
      repsonse = get("sp=#{word}").parsed_response
    end
  end
end
