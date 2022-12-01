Rails.application.routes.draw do

  devise_for :customers,skip:[:passwords],controllers:{
    registrations:"public/registrations",
    sessions:'public/sessions'
  }

  devise_for :admin,skip:[:registrations,:passwords],controllers:{
    sessions:"admin/sessions"
  }

  namespace :public do
    root :to => 'homes#top'
    get 'about' => 'homes#about'
  end
  namespace :admin do
    root :to  => 'homes#top'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/edit'
  end
  namespace :admin do
   get 'index' => 'items#index'
   resources :items, only: [:new,:create,:show,:edit]
   resources :genres, only: [:index,:create,:edit,:update]
   resources :customers, only: [:show,:index,:edit]
  end




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
