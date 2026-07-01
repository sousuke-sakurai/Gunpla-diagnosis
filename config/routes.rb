Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'gundams#index'

 
  # 画像投稿の保存処理へ向かうためのルートを追加
  post 'gundams/create_work', to: 'gundams#create_work'
  # photo画面へ移動するためのルートを追加
  get 'gundams/:id/photo', to: 'gundams#photo'
 

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  
  get 'others' => 'gundams#others'
  get 'histry' => 'gundams#histry'
  get 'work'   => 'gundams#work'
 post 'gundams' => 'gundams#create'
resources :gundams

# photo画面へ移動するためのルートを追加
  get 'gundams/photo', to: 'gundams#photo'
  # 画像投稿の保存処理へ向かうためのルートを追加
  post 'gundams/create_work', to: 'gundams#create_work'


  # Defines the root path route ("/")
  # root "posts#index"
end
