Rails.application.routes.draw do
  get 'data/home'
  get 'data/data', provides: [:json, :xml]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
