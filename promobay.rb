require 'cinch'
require 'open-uri'

module Cinch::Plugins
  class Cinch::Promobay
    include Cinch::Plugin
   
    def initialize()
      @source = "http://thepiratebay.se" # Will be changed to Conf[-blah-blah-blah when I'll do the integration with https://github.com/rousses/tagram 
      super
    end

    def geturl()
      html = open(@source).read
      @url = html.scan(/(https\:\/\/www.youtube-nocookie.com(.+)(?=\?))/)
    end

    match(/promo (.+)/)
      geturl()
      reply = Format(:bold, "Today on The Promo Bay : " @url)

  end
end
