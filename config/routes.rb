ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.devise_for :user
  
  map.root :controller => "home"
end
