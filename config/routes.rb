Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/show'

  get 'posts/create'

  get 'posts/update'

  get 'posts/new'

  get 'posts/destroy'

  get 'posts/edit'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
