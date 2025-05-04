Rails.application.routes.draw do
  devise_for :users
  # devise_for :admins,  controllers: { sesions: "sessions" }
  root to: 'main#index'
  get  '/about', to: "main#about"
  get '/picture_of_the_day', to: "main#picture_of_the_day" #make a comment here
  get '/mars_weather', to: "main#mars_weather"
  
end
