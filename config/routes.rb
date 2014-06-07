Rails.application.routes.draw do
  root :to => "visitors#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  get '/auth/:provider/callback' => 'sessions#create'
  get '/sign_in' => 'sessions#new', :as => :sign_in
  get '/sign_out' => 'sessions#destroy', :as => :sign_out
  get '/auth/failure' => 'sessions#failure'
end
