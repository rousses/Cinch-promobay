require 'cinch'
require 'open-uri'

module Cinch::Plugins
  class Cinch::Promobay
    include Cinch::Plugin
   
    def initialize()
      @source = "http://thepiratebay.se" # Will be changed to Conf[-blah-blah-blah when I'll do the integration with https://github.com/rousses/tagram 
      super
    end

    html = open(@source).read
  end
end
