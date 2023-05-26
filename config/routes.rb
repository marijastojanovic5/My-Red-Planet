Rails.application.routes.draw do
  devise_for :users
  root to: 'main#index'
  get  '/about', to: "main#about"
  get '/picture_of_the_day', to: "main#picture_of_the_day"
  get '/mars_weather', to: "main#mars_weather"
  
end
