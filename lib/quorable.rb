require 'open-uri'
require 'nokogiri'
require 'pry'

module Quorable
  URL = 'http://www.quora.com'

  def self.feed(topic)
    doc = Nokogiri::HTML.parse(open("#{URL}/#{Quorable.parameterize(topic)}"))
    doc.css('.question_link').map { |link| "#{URL}#{link['href']}" }
  end

  private

  def self.parameterize(topic)
    topic.split.map(&:capitalize).join('-')
  end
end