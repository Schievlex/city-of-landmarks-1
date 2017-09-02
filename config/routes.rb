Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "landmarks#index"

  resources :landmarks

  #get "landmarks" => "landmarks#index"
 # get 'landmarks/new' => "landmarks#new", as: :new_landmark
  #get "landmarks/:id" => "landmarks#show", as: :landmark
  #post "landmarks" => "landmarks#create"
  #get 'landmarks/:id/edit' => 'landmarks#edit', as: :edit_landmark

  #patch "landmarks/:id" => "landmarks#update"
end
