ActionController::Routing::Routes.draw do |map|

  map.logout   '/logout', :controller => 'sessions', :action => 'destroy'
  map.login    '/login',  :controller => 'sessions', :action => 'new'

  map.logout '/boomcrashbang',   :controller => 'monitor', :action => 'boomcrashbang'
  map.logout '/monit-test-page', :controller => 'monitor', :action => 'index'
  
  map.resources :accounts
  map.resources :sessions

  map.resources :users
  map.resources :domains
  map.resources :aliases

  map.root :controller => "domains"

end
