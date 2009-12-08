ActionController::Routing::Routes.draw do |map|
  map.resource :user
  map.devise_for :users
  
  map.root :controller => "home"
end
