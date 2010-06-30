require 'rubygems'
require 'mechanize'

agent = Mechanize.new
page = agent.get('http://google.com/')
 
page.links.each do |link|
 	puts link.text
end

#page = agent.page.links.find { |l| l.text == 'News' }.click
page = agent.page.link_with(:text => 'News').click