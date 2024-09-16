Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blog_posts#index"

  get "blog_posts/new" => "blog_posts#new", as: :new_blog
  post "blog_posts" => "blog_posts#create", as: :blog_posts

  # dynamic routes go last
  get "blog_posts/:id" => "blog_posts#show", as: :blog
  get "blog_posts/:id/edit" => "blog_posts#edit", as: :edit_blog

end
