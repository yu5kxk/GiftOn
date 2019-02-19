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
  
  resources :posts, only:[:new, :index, :show, :edit, :create, :update, :destroy] do
    resources :post_images, only:[:new, :create, :edit, :update, :destroy]
    resources :clips, only:[:index, :create, :destroy]
    resources :thanks, only:[:create, :destroy]
  end
  resources :users, only:[:show, :index, :edit, :update]


  resources :large_categories, only:[:new, :create, :edit,:update, :destroy]
  resources :small_categories, only:[:create, :edit, :update, :destroy]

  resources :large_scenes, only:[:new, :create, :edit, :update, :destroy]
  resources :small_scenes, only:[:create, :edit, :update, :destroy]

 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  patch 'users/d/:id' => 'users#unsubscribe', as: 'unsubscribe_user'
end
