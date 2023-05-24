Rails.application.routes.draw do
  root 'main#home'
  get  '/about', to: "main#about"
  get '/picture_of_the_day', to: "main#picture_of_the_day"
  get '/mars_weather', to: "main#mars_weather"
end
