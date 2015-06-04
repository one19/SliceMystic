# == Route Map
#
#            Prefix Verb   URI Pattern                         Controller#Action
#        pages_home GET    /pages/home(.:format)               pages#home
#        pies_admin GET    /pies/admin(.:format)               pies#admin
#              pies GET    /pies(.:format)                     pies#index
#                   POST   /pies(.:format)                     pies#create
#           new_pie GET    /pies/new(.:format)                 pies#new
#          edit_pie GET    /pies/:id/edit(.:format)            pies#edit
#               pie GET    /pies/:id(.:format)                 pies#show
#                   PATCH  /pies/:id(.:format)                 pies#update
#                   PUT    /pies/:id(.:format)                 pies#update
#                   DELETE /pies/:id(.:format)                 pies#destroy
# websites_allmaker GET    /websites/allmaker(.:format)        websites#allmaker
#          websites GET    /websites(.:format)                 websites#index
#                   POST   /websites(.:format)                 websites#create
#       new_website GET    /websites/new(.:format)             websites#new
#      edit_website GET    /websites/:id/edit(.:format)        websites#edit
#           website GET    /websites/:id(.:format)             websites#show
#                   PATCH  /websites/:id(.:format)             websites#update
#                   PUT    /websites/:id(.:format)             websites#update
#                   DELETE /websites/:id(.:format)             websites#destroy
#                   GET    /websites/:id/singlemaker(.:format) websites#singlemaker
#                   GET    /websites/:id/upmaker(.:format)     websites#upmaker
#           updates GET    /updates(.:format)                  updates#index
#                   POST   /updates(.:format)                  updates#create
#        new_update GET    /updates/new(.:format)              updates#new
#       edit_update GET    /updates/:id/edit(.:format)         updates#edit
#            update PATCH  /updates/:id(.:format)              updates#update
#                   PUT    /updates/:id(.:format)              updates#update
#                   DELETE /updates/:id(.:format)              updates#destroy
#        edit_users GET    /users/edit(.:format)               users#edit
#             users GET    /users(.:format)                    users#index
#                   POST   /users(.:format)                    users#create
#          new_user GET    /users/new(.:format)                users#new
#              user PATCH  /users/:id(.:format)                users#update
#                   PUT    /users/:id(.:format)                users#update
#                   DELETE /users/:id(.:format)                users#destroy
#              root GET    /                                   pages#home
#             login GET    /login(.:format)                    session#new
#                   POST   /login(.:format)                    session#create
#                   DELETE /login(.:format)                    session#destroy
#

Rails.application.routes.draw do

  get 'pages/home'

  get 'pies/admin' => 'pies/admin'
  resources :pies

  get 'websites/allmaker' => 'websites#allmaker'
  resources :websites
  get 'websites/:id/singlemaker' => 'websites#singlemaker'
  get 'websites/:id/upmaker' => 'websites#upmaker'
  resources :updates, :except => [:show]
  resources :users, :except => [:edit, :show] do
    collection do
      get '/edit' => 'users#edit'
    end
  end

  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
