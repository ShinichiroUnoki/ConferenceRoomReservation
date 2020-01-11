Rails.application.routes.draw do
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
  #スケジュール作成
  get 'schedules/create'
  get 'schedules/update'
  get 'schedules/destroy'


  get 'users/calender'
  get 'users/show'
  get 'users/update'
  get 'users/show'
  get 'users/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end