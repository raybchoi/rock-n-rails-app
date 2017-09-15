Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # when you go to localhost:3000/albums then go to the to route album controller and then find the index method which will then tell you to go the the correct view folder


  # as: 'albums' is the keywords for the path when creating links
  get "/albums" => "albums#index", as: 'albums'


  get "/albums/new" => "albums#new", as: 'new_album'

  # this is routes for the specific ID
  get "/albums/:id" => "albums#show", as: 'album'

  post "/albums" => "albums#create"

end
