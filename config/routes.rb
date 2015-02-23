Rails.application.routes.draw do

  resources :common_errors do
  collection do
    get 'preview'
  end
end
  devise_for :users
  
  root 'common_errors#index'  
  match "/common_errors/add_new_comment" => "common_errors#add_new_comment", :as => "add_new_comment_to_common_errors", :via => [:post]


  
end