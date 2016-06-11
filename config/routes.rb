Rails.application.routes.draw do
  devise_for :users

  #this will create root-url/api/v1
 namespace :api, defaults:{ format: :json} do
   namespace :v1 do
     #api v1
     resources :users, only: [:create, :show, :update, :destroy]
   end
 end
end
