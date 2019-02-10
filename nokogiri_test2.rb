require 'nokogiri'
require 'open-uri'

doc = %Q(<div class="test">)

contents = Nokogiri::HTML.parse(doc, nil, nil)
contents = contents.search('body').inner_html

puts contents
