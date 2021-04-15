Rails.application.routes.draw do
  root 'snapshots#index'
  get "/search", controller: 'snapshots', action: 'search'
end
