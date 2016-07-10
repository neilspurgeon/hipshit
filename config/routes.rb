Rails.application.routes.draw do
  
  namespace :admin do
    root to: "dashboard#index"
    get 'dashboard/index'
    get "dashboard", to: "dashboard#index"

    resources :posts
    resources :users, except: :show  

    delete "/admin/posts/:id", to: "admin_posts#destroy", as: "delete_admin_post"

  end

  resources :posts, only: [:index]
  root to: "posts#index"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout" 



end


#                Prefix Verb   URI Pattern                      Controller#Action
#            admin_root GET    /admin(.:format)                 admin/dashboard#index
# admin_dashboard_index GET    /admin/dashboard/index(.:format) admin/dashboard#index
#       admin_dashboard GET    /admin/dashboard(.:format)       admin/dashboard#index
#           admin_posts GET    /admin/posts(.:format)           admin/posts#index
#                       POST   /admin/posts(.:format)           admin/posts#create
#        new_admin_post GET    /admin/posts/new(.:format)       admin/posts#new
#       edit_admin_post GET    /admin/posts/:id/edit(.:format)  admin/posts#edit
#            admin_post PATCH  /admin/posts/:id(.:format)       admin/posts#update
#                       PUT    /admin/posts/:id(.:format)       admin/posts#update
#                       DELETE /admin/posts/:id(.:format)       admin/posts#destroy
#           admin_users GET    /admin/users(.:format)           admin/users#index
#                       POST   /admin/users(.:format)           admin/users#create
#        new_admin_user GET    /admin/users/new(.:format)       admin/users#new
#       edit_admin_user GET    /admin/users/:id/edit(.:format)  admin/users#edit
#            admin_user GET    /admin/users/:id(.:format)       admin/users#show
#                       PATCH  /admin/users/:id(.:format)       admin/users#update
#                       PUT    /admin/users/:id(.:format)       admin/users#update
#                       DELETE /admin/users/:id(.:format)       admin/users#destroy
#                  root GET    /                                posts#index
#              new_user GET    /users/new(.:format)             users#new
#                 users POST   /users(.:format)                 users#create
#                 login GET    /login(.:format)                 sessions#new
#              sessions POST   /sessions(.:format)              sessions#create
#                logout GET    /logout(.:format)                sessions#destroy
#                 posts GET    /posts(.:format)                 posts#index
