require "http"
class MainController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = current_user
    @user = User.find(params[:id])
    
  end

  def about
    @about = "This is a sample about page. You can add more information here."
    render 'about' 
  end

  def picture_of_the_day
    response = HTTP.get("https://api.nasa.gov/planetary/apod?api_key=#{Rails.application.credentials.nasa_key}")
    if response.status == 200
      @url = response.parse["url"]
      @description = response.parse["explanation"]
      @date = response.parse["date"]
      @title = response.parse["title"]
      render 'picture_of_the_day'
    else
      # flash[:error] = "We apologize but at the moment we are unable to show you Picture of the Day. Please check again later."
      # redirect_to default_location??
    end
  end

  def mars_weather
    reponse = HTTP.get("https://api.nasa.gov/insight_weather/?api_key=#{Rails.application.credentials.nasa_key}&feedtype=json&ver=1.0")
  end

end
