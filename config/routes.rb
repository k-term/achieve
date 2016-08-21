Rails.application.routes.draw do

 # get 'contacts/index'

 
  #get 'diaries' => 'diaries#index'
  resources :diaries ,only: [ :destroy,:update,:edit,:index,:new, :create]do
   collection do
      post :confirm
   
   end
  end
  resources :contacts ,only: [ :destroy,:update,:edit,:index,:new, :create]do
  collection do
      post :confirm
      end
  
  end
  root 'top#index'
end
