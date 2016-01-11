Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  #   root 'events#index'
  #   get 'events' => 'events#index'
  #   get 'events/new' => 'events#new'
  #   post 'events' => 'events#create'
  #   get 'events/:id(.:format)' => 'events#show'

  #   get 'events/:event_id/comments/new' => 'comments#new'
  #   post 'events/:event_id/comments' => 'comments#create'
  # end

  # TechReviewSite::Application.routes.draw do
  resources :events do
    resources :comments, only: [:new, :create]
  end

  root 'events#index'
  # get  'users/:id'   =>  'users#show'

  resources :user_events, only: [:index, :create]

end

# , only: [:new, :create, :show,:edit,:destroy] 