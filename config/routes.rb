Rails.application.routes.draw do
  resources :triangles
  resources :anagrams
  resources :palindromes
  resources :ordenators
  resources :calcs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"
end
