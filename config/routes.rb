ActionController::Routing::Routes.draw do |map|
  
  map.resources :users do |user|
    user.resources :task_lists, :controller => "users/task_lists"
  end
  
  map.devise_for :user
  
  map.root :controller => "home"
end
