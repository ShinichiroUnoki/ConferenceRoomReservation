Rails.application.routes.draw do
  devise_for :users
  #会議室一覧
  root 'rooms#index'
  #会議室の新規登録
  get 'rooms/new', to: 'rooms#new'
  post 'rooms/create', to: 'rooms#create'
  #会議室の編集
  get 'rooms/edit/:id', to: 'rooms#edit'
  patch 'rooms/update/:id', to: 'rooms#update'
  #会議室削除
  delete 'rooms/destroy/:id', to: 'rooms#destroy'

  #カレンダー参照
  get 'schedules/top/:id', to: 'schedules#top'
  #予約の新規作成
  get 'schedules/new/:id', to: 'schedules#new'
  post 'schedules/create/:id', to: 'schedules#create'
  #予約の編集
  get 'schedules/edit/:id', to: 'schedules#edit'
  patch 'schedules/update/:id', to: 'schedules#update'
  #予約の削除
  delete 'schedules/destroy/:id', to: 'schedules#destroy'

  #マイカレンダー表示
  get 'users/calendar', to: 'users#calendar'
  #登録情報
  get '/users/edit'

  #devise
  get '/users', to: redirect("/users/sign_up")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
