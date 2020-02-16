Rails.application.routes.draw do
  get 'admin_page/index'
  get 'admin_page/edit'
  get 'admin_page/new'
  post 'admin_page/new'
  get 'admin_page/index'
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
