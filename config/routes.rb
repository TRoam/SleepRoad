Rails.application.routes.draw do
  resources :users do

    member do 
      get :punch 
      get :following
      get :followers
      get :recentRecords
    end
    resources :relationships , only: [:create, :destroy]
    resources :records , only: [:index] 

  end



end
