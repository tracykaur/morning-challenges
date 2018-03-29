#
# Page Title
#
# Write a method that takes a URL and
# returns the website's title.
#
# Examples:
# pageTitle("http://google.com") => "Google"
# pageTitle("http://www.reddit.com") => "reddit: the front page of the internet"
#
# Check your answers by running the tests:
# ruby tests/16_page_title_test.rb
#

# require "nokogiri"
require "open-uri"

# def pageTitle(url)
#   open(url) do |f|
#     doc = Nokogiri::HTML(f)
#     doc.at_css('title').text
#   end
# end

# def pageTitle(url)
#   Nokogiri::HTML(open(url)).css('title').text
# end

def pageTitle(url)
  open(url).read.scan(/<title>(.*)<\/title>/).join
end

# puts pageTitle("http://www.twitter.com").inspect
