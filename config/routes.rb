Rails.application.routes.draw do
  resources :calcs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "calcs#index"
end
