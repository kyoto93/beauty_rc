Rails.application.routes.draw do
  resources :tops
  resources :genrs
  get 'top' => 'tops#top'
  root to:'top#index'
  # # ネストの書き方
  # resource :genre do
  #   resources :
  # end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
