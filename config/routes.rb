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
  get "questions/:question_id/answers" => "answers#create" ,defaults: { format: 'js' }
  resources :questions do
    resource :evaluation, only: [:create, :destroy] , defaults: { format: 'js' }
  end
  
  get 'questions/select_country' => 'select_country'
  # resources :answers　使うリソースは少ないため限定して設定する
  get 'answers' => 'answers#index'
  #shallow :trueにするとURLを短くしてアクセスできる。
  resources :questions, shallow: true do
    resources :answers, shallow: true do
      resources :reactions 
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
