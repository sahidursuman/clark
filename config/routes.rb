Rails.application.routes.draw do
  get 'dashboard/index'

  resources :templates
  resources :documents
  resources :projects
  resources :doc_types
  resources :doc_data
  resources :tags

	root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
