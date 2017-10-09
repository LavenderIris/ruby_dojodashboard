Rails.application.routes.draw do
  get '/dojos'  => "dojos#index"
  delete '/dojos/:id/' => "dojos#destroy"
  get '/dojos/new'  => "dojos#show_create_page"
  get '/dojos/:id/edit'=> "dojos#show_edit_page"
  post '/create' => "dojos#create"
  get '/dojos/:id'=> "dojos#show"
  
  patch '/update/:id' => "dojos#update"
end
