desc 'Scrape historic weather data from countrystudies.us'
task :get_weather_data => :environment do
  require 'nokogiri'
  require 'open-uri'

  doc = Nokogiri::HTML(open("http://countrystudies.us/united-states/weather/tennessee/"))
  doc.css('tr td a').each do |link|
    unless link.content.include?("US") 
      city_page = link.values.first.to_s
      city = link.content
      weather_page = Nokogiri::HTML(open("http://countrystudies.us/united-states/weather/tennessee/#{city_page}"))
      puts "#{city} #{weather_page.css('tr')[5].text}"
      # weather = Weather.create( :city => city, :weather_info => weather_info )
    end
  end

end