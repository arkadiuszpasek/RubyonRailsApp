Rails.application.routes.draw do
  get 'login/signin'
  get 'login/signup'
  get 'admin_page/index'
  get 'admin_page/show'
  get 'admin_page/new'
  get 'admin_page/edit'
  post 'admin_page/edit'
  delete 'admin_page/delete'
  post 'admin_page/create'
  get 'admin_page/index'
  get 'welcome/index'
  post 'login/signup'
  post 'login/signin'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
