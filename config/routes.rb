ActionController::Routing::Routes.draw do |map|
  map.resource :users
  map.devise_for :users
  
  map.root :controller => "home"
end
