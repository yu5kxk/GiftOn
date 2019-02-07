Rails.application.routes.draw do

  root 'posts#top'

  devise_for :managers, controllers: {
  	session: 'managers/sessions',
  	passwords: 'managers/passwords',
  	registrations: 'managers/registrations'
  }

  devise_for :users, controllers: {
  	session: 'users/sessions',
  	passwords: 'users/passwords',
  	registrations: 'users/registrations'
  }

  get 'users/lnquiry'
  get 'posts/top'
  
  resources :posts, only:[:new, :index, :show, :edit, :create, :update, :deatroy]
    resources :targets, only:[:create, :update]
    resources :items, only:[:create, :update, :destroy]
    resources :ratings, only:[:create, :update]
  

  resources :clips, only:[:index, :create, :destroy]

  resources :large_categories, only:[:new, :index, :create, :update, :destroy]
    resources :small_categories, only:[:create, :update, :destroy]

  resources :makers, only:[:index, :create, :update, :destroy]

  resources :large_scenes, only:[:new, :index, :create, :update, :destroy]
    resources :small_scenes, only:[:create, :update, :destroy]


  resources :users, only:[:show, :index, :edit, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
