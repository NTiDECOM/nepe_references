Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  resources :references
  resources :bible_books
  root to: "home#index"
  get 'search', to: 'search#search'
end
