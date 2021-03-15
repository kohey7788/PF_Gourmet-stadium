Rails.application.routes.draw do
  devise_for :admins
  devise_for :visitors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'

  namespace :admin do
    resources :stadiums
    resources :visitors, only: [:index, :show]
    resources :gourmets, only: [:index, :show]
  end

end
