class PagesController < ApplicationController

  before_action do
    @cities = []
    @cities << City.new("Shanghai", "CN", "Shanghai.jpg","Shanghai")
    @cities << City.new("Karachi", "PK", "Karachi.jpg","Karachi")
    @cities << City.new("Beijing", "Beijing", "Beijing.jpg","Beijing")
    @cities << City.new("Tianjin", "CN", "Tianjin.jpg","Tianjin")
    @cities << City.new("Istanbul", "TU", "Istanbul.jpg","Istanbul")
    @cities << City.new("Lagos", "Nigeria", "Lagos.jpg","Lagos")
    @cities << City.new("Guangzhou","China", "Guangzhou.jpg","Guangzhou")
    @cities << City.new("Mumbai", "IN", "Mumbai.jpg","Mumbai")
    @cities << City.new("Dhaka", "Bangladesh", "Dhaka.jpg","Dhaka")
    @cities << City.new("Cairo", "EG", "Cairo.jpg","Cairo")
    @cities << City.new("Sao Paulo", "Brazil", "Sao-Paulo.jpg","Sao Paulo")
    @cities << City.new("Lahore","PK", "Lahore.jpg","Lahore")
    @cities << City.new("Seoul", "KR", "Seoul.jpg", "Seoul")
    @cities << City.new("Jakarta", "ID", "Jakarta.jpg", "Jakarta")
    @cities << City.new("Kinshasa", "Congo", "Kinshasa.jpg","Kinshasa")
    @cities << City.new("Tokyo", "JP", "Tokyo.jpg", "Tokyo")
    @cities << City.new("Mexico City", "MX", "Mexico-City.jpg","Mexico City")
    @cities << City.new("Lima","Peru", "Lima.jpg","Lima")
  end

  def cities
  end

  def weather
    @selected_city = @cities.find do |city|
      city.name == params[:city]
    end
  end
end
