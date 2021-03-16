Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :reactions
  # resources :answers　使うリソースは少ないため限定して設定する
  get 'answers' => 'answers#index'
  #shallow :trueにするとURLを短くしてアクセスできる。
  resources :questions, shallow: true do
    resources :answers, shallow: true do
      resources :reactions
    end
  end
  #devise_for :users はrails g devise Userで自動追加された
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root 'pages#index'
  get 'pages/show'
  get 'questions', to:'questions#index'
  get 'static_pages/home'
end
