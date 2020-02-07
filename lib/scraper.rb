require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
 doc.css(".post").each do |post|
   course = Course.new
   course.title = post.css 
  
end

Scraper.new.get_page

  
  



