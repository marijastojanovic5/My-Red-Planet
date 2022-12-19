require "http"
class MainController < ApplicationController
  def home
  end

  def about
  end

  def picture_of_the_day
  #   response = HTTP.get("https://api.nasa.gov/planetary/apod?api_key=NASA_KEY")
  #   if response.status == 200
  #     render './../views/main/picture_of_the_day'
  #   else
  #     flash[:error] = "Something is wrong"
  #   end
  # end

end
