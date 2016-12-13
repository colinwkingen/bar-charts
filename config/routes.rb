Rails.application.routes.draw do
  root to: 'locations#index'

  resources :locations do
    resources :charts
  end

end
