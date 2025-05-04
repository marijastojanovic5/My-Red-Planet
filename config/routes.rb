Rails.application.routes.draw do
  devise_for :users
  # devise_for :admins,  controllers: { sesions: "sessions" }
  root to: 'main#index'
  get  '/about', to: "main#about"
  # made more comments here
  get '/picture_of_the_day', to: "main#picture_of_the_day"
  get '/mars_weather', to: "main#mars_weather"
  
end
