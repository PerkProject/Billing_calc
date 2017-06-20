Rails.application.routes.draw do
  get 'welcome/index'

  resources :borrowers
  resources :loans do
      resources :history_payments
  end  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
