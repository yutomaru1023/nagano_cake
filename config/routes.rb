Rails.application.routes.draw do
  
  namespace :admin do
    get 'genres/index'
    get 'genres/edit'
  end
  namespace :admin do
   resources :items, only: [:new,:create,:index,:show,:edit]
   resources :genres, only: [:index,:create,:edit,:update]
   resources :customers, only: [:show,:index,:edit]
  end

  devise_for :customers,skip:[:passwords],controllers:{
    registraions:"public/registraions",
    sessions:'public/sessions'
  }

  devise_for :admin,skip:[:registrations,:passwords],controllers:{
    sessions:"admin/sessions"
  }


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
