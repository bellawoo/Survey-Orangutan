Rails.application.routes.draw do
  # root 'login'
  # get 'login' => 'user#login', as: 'get_login'
  # post 'take_login' => 'user#take_login', as: 'take_login'

  post '/questions' => 'questions#create'
  get '/questions' => 'questions#index'
  get '/question/:id' => 'questions#view'
  post '/question/:id/answer' => 'answers#create'
  patch '/question/:id' => 'questions#update' #Takes text
  get '/qustion/:id' => 'questions#edit'
  get '/question/:id/answer/edit' => 'answers#edit'
  delete '/question/:id' => 'questions#delete'
  delete '/question/:question_id/answer/:id' => 'answers#delete'
end
