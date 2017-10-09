Rails.application.routes.draw do
  get '/dojos'  => "dojos#index"
  get '/dojos/new'  => "dojos#show_create_page"
  post '/create_dojo' => "dojos#create_dojo"
end
