class City
  require 'open-uri'
  require 'json'
  attr_accessor :name, :country, :image, :content, :temp, :humidity, :rain, :text


  def initialize(name, country, image, content)
    @name = name
    @country = country
    @image = image
    @content = content
    @rain = rain
    @text = text
  end


  def forecast
    open("http://api.wunderground.com/api/088a807b8233bfad/geolookup/conditions/q/#{self.country}/#{self.name.gsub(' ', '_')}.json") do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @temp = parsed_json['current_observation']['temp_f']
      @humidity = parsed_json['current_observation']['relative_humidity']
    end

    open("http://api.wunderground.com/api/088a807b8233bfad/geolookup/forecast/q/#{self.country}/#{self.name.gsub(' ', '_')}.json") do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @rain = parsed_json['forecast']['txt_forecast']['forecastday'].first['pop']
      @text = parsed_json['forecast']['txt_forecast']['forecastday'].first['fcttext']
    end
  end
end
