Rails.application.routes.draw do
  # resources :memos
  resources :posts do
    resources :comments
  end

  # root path = / にpostsのソースをレンダリング
  root 'posts#index'

end
