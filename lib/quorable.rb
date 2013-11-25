require 'open-uri'
require 'nokogiri'
require 'pry'

BASE_URL = 'http://www.quora.com'

def parameterize(topic)
  topic.split(' ').map(&:downcase).map(&:capitalize).join('-')
end

def feed(topic)
  doc = Nokogiri::HTML.parse(open("#{BASE_URL}/#{parameterize(topic)}"))
  paths = doc.css('.question_link').map { |link| link['href'] }
end