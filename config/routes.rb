Rails.application.routes.draw do
  resources :hollywoods
  resources :bollywoods
  resources :footballs
  resources :crickets
  get 'start_quiz/index'

  
  post '/crickets/2', to:'crickets#test'
  post '/crickets/3', to:'crickets#test'
  get '/crickets/2'
  get '/crickets/3'
  get '/crickets/4'
  get '/crickets/5'
  get '/crickets/6'
  get '/crickets/7'
  get '/crickets/8'
  get '/crickets/9'
  get '/crickets/10'
  get '/crickets/11'
  get '/crickets/12'
  get '/crickets/13'
  get '/crickets/14'
  get '/crickets/15'

  get '/footballs/1'
  get '/footballs/2'
  get '/footballs/3'
  get '/footballs/4'
  get '/footballs/5'
  get '/footballs/6'
  get '/footballs/7'
  get '/footballs/8'
  get '/footballs/9'
  get '/footballs/10'
  get '/footballs/11'
  get '/footballs/12'
  get '/footballs/13'
  get '/footballs/14'
  get '/footballs/15'


  get '/bollywoods/1'
  get '/bollywoods/2'
  get '/bollywoods/3'
  get '/bollywoods/4'
  get '/bollywoods/5'
  get '/bollywoods/6'
  get '/bollywoods/7'
  get '/bollywoods/8'
  get '/bollywoods/9'
  get '/bollywoods/10'
  get '/bollywoods/11'
  get '/bollywoods/12'
  get '/bollywoods/13'
  get '/bollywoods/14'
  get '/bollywoods/15'


  get '/hollywoods/1'
  get '/hollywoods/2'
  get '/hollywoods/3'
  get '/hollywoods/4'
  get '/hollywoods/5'
  get '/hollywoods/6'
  get '/hollywoods/7'
  get '/hollywoods/8'
  get '/hollywoods/9'
  get '/hollywoods/10'
  get '/hollywoods/11'
  get '/hollywoods/12'
  get '/hollywoods/13'
  get '/hollywoods/14'
  get '/hollywoods/15'




  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
