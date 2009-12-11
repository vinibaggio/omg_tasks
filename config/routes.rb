ActionController::Routing::Routes.draw do |map|
  
  map.resources :users do |user|
    user.resources :task_lists, :controller => 'users/task_lists'
    user.shared_lists 'shared_lists', :controller => 'users/shared_lists'
  end
  
  map.devise_for :user
  
  map.root :controller => "home"
end
