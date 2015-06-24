Rails.application.routes.draw do
  devise_for :users
  resources :questions do
    resources :answers, except: [:index], shallow: true
  end
end
