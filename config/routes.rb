Rails.application.routes.draw do
  root 'post#index'

  get 'user/index'
  get 'user/new'
  get 'user/create'
  get 'user/login'
  get 'user/login_process'
  get 'user/show/:id' => 'user#show'
  get 'user/logout'

  get 'post/index'
  get 'post/new'
  get 'post/create'
  get 'post/show/:id' => 'post#show'
  get 'post/modify/:id' => 'post#modify'
  get 'post/update/:id' => 'post#update'
  get 'post/destroy/:id' => 'post#destroy'
  get 'post/create_comment'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
