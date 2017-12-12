Rails.application.routes.draw do
  get 'find/:id' => 'main#find', as: 'find'
  get 'list' => 'main#list', as: 'list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
