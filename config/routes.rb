Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get '/blogs', to: 'blog#index', as: 'blogs'
  # changed alias from "posts" to "blogs" because rails will not recognize another naming convention, so it HAS to be the pluarl version of the name of the Model. received an error saying that the server can't find a "blogs_path". -- updated the views/show.html.erb to "blogs_path"
  get '/blogs/new', to: 'blog#new', as: 'new'
  post '/blogs', to: 'blog#create'

  get '/blogs/:id', to: 'blog#show', as: 'blog'

  delete '/blogs/:id', to: 'blog#destroy', as: 'destroy'

  

end