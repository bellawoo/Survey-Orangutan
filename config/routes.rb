Rails.application.routes.draw do
  resources :questions do
    resources :answer, except: [:index], shallow: true
  end
end
