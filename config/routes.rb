Rails.application.routes.draw do
  root to: 'homes#top'

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :visitors, controllers: {
    sessions:      'visitors/sessions',
    passwords:     'visitors/passwords',
    registrations: 'visitors/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :admin do
    resources :stadiums
    resources :visitors, only: [:index, :show]
    resources :gourmets, only: [:index, :show] do
      resources :gourmet_comments, only: [:destroy]
    end
  end

  scope module: :public do
    resources :gourmets, except: [:edit, :update] do
      resources :gourmet_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
   resources :visitors, only: [:show, :edit, :update]

  end

end
