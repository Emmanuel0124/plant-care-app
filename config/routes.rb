Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/plants" => "plants#index"
  get "/plants/:id" => "plants#show"
  post "/plants" => "plants#create"
  patch "/plants/:id" => "plants#update"
  delete "/plants/:id" => "plants#destroy"



  get "/schedules" => "schedules#index"
  post "/schedules" => "schedules#create"

end
