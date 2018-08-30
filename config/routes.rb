Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users

  resources :answers
  resources :questions do
    collection do
      get 'area_conhecimento'
    end
  end
  resources :users

  # get 'questions/:area_conhecimento', to: 'questions#questions_area', as: :questions_area
end
