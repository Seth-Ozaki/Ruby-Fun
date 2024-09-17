Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  get "blog_posts/new" => "blog_posts#new", as: :new_blog
  post "blog_posts/new" => "blog_posts#create", as: :all_blogs
  
  # dynamic routes go last
  get "blog_posts/:id" => "blog_posts#show", as: :blog
  patch "blog_posts/:id" => "blog_posts#update"
  get "blog_posts/:id/edit" => "blog_posts#edit", as: :edit_blog
  delete "blog_posts/:id" => "blog_posts#delete", as: :delete_blog
  
  # devise routes
  devise_for :users
  
  
  root "blog_posts#index"
  resources :blog_posts
end
