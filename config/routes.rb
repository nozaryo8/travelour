Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_scope :user do
    post 'users/guest_log_in', to: 'users/sessions#guest_log_in'
  end
  resources :reactions
  # devise_scope :user do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  get 'notifications' => 'users#notifications'
  get 'questions/top' => 'questions#top'
  get 'questions/area' => 'questions#area'
  get "questions/get_body" => "questions#get_body" , defaults: { format: 'js' }
  get "answers/:answer_id/reactions/new" => "reactions#new" 
  get "questions/:question_id/answers/new" => "answers#new" , defaults: { format: 'js' }
  get "questions/resolved_question" => "questions#resolved_question"
  get "questions/all_question" => "questions#all_question"
  # TODO: format: js　をoffにしたので必要であれば元にもどす
  get "questions/:question_id/answers" => "answers#create" #,defaults: { format: 'js' }
  get "answers/:answer_id/reactions" => "reactions#create" #,defaults: { format: 'js' }
  get "users/:id/connections" => "users#connections", as: 'connections'
  get "questions/:id/answer_request" => "questions#answer_request", as: 'answer_request'
  post "questions/:id/answer_request" => "questions#create_request", as: 'create_request'
  delete "reactions/:id" => "reactions#destroy" #,defaults: { format: 'js' }
  delete "answers/:id" => "answers#destroy" #,defaults: { format: 'js' }
  resources :relationships, only: [:create, :destroy]
  resources :questions do
    resource :evaluation, only: [:create, :destroy] , defaults: { format: 'js' }
  end
  
  resources :questions, only: [:show] do
    resource :bookmarks, only: [:create, :destroy]
  end
  
  resources :notifications, only: [:update]

  get 'questions/select_country' => 'select_country'
  # resources :answers　使うリソースは少ないため限定して設定する
  get 'answers' => 'answers#index'
  #shallow :trueにするとURLを短くしてアクセスできる。
  resources :questions, shallow: true do
    resources :answers, shallow: true do
      resources :reactions #, defaults: { format: 'js' }
    end
  end

  get "users/:id/evaluations" => "users#evaluations"
  
  resources :answers do
    resource :goods, only: [:create, :destroy] , defaults: { format: 'js' }
  end
  #devise_for :users はrails g devise Userで自動追加されたこれでdeviseのコントローラーを使うことができる
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' ,
    registrations: 'users/registrations'
  }

  resources :users 
  resource :user, except: [:new, :create, :destroy]
  
  
  
  root 'questions#top'
  get 'pages/index'
  get 'pages/show'
  get 'static_pages/home'
  get '/auth/:provider/callback', to: 'sessions#create'
end
