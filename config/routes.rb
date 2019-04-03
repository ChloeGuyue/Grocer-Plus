Rails.application.routes.draw do
  get '' => 'pages#home'
  get '/edit' => 'users#edit'
  post '/edit' => 'users#update'
  get '/show' => 'users#show'



  devise_for :users, :controllers => {:registrations => "registrations"}
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


end
