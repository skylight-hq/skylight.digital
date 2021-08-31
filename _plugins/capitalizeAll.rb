#source https://stackoverflow.com/questions/21315732/capitalize-first-letter-of-each-word-with-liquid-syntax
require 'liquid'
require 'uri'

# Capitalize all words of the input
module Jekyll
  module CapitalizeAll
    def capitalize_all(words)
      return words.split(' ').map(&:capitalize).join(' ')
    end
  end
end

Liquid::Template.register_filter(Jekyll::CapitalizeAll)