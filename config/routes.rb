Rails.application.routes.draw do

  get 'months/index'

  get 'months/edit'

  get 'months/new'

resources :diaries
resources :months

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
