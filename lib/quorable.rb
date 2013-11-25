require 'open-uri'
require 'nokogiri'
require 'pry'

BASE_URL = 'http://www.quora.com'

def parameterize(topic)
  topic.split(' ').map(&:downcase).map(&:capitalize).join('-')
end

# topic = 'data structures'
# topic = normalize(topic)

def feed(topic)
  doc = Nokogiri::HTML.parse(open("#{BASE_URL}/#{parameterize(topic)}"))
  #questions = doc.css('.link_text').map(&:text)
  # expanded_texts = doc.css('.expanded_q_text').map { }
  paths = doc.css('.question_link').map { |link| link['href'] }
end

puts feed('ruby on rails')
puts
puts feed('gila monster')

binding.pry