Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'departments#index'

  resources :departments do
    resources :items
  end

  scope 'items/:item_id', as: 'item' do
    resources :reviews, only: [:new, :create, :destroy]
  end
end
