ActionController::Routing::Routes.draw do |map|
  map.resource :user
  map.devise_for :user
  
  map.root :controller => "home"
end
