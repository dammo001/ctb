Rails.application.routes.draw do
 root to: "static_pages#index" 

 resources :matches, defaults: { format: :json }, only: [:create, :update, :destroy]
 resources :players, defaults: { format: :json }, only: [:create, :update, :destroy] 


end
