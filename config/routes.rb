Rails.application.routes.draw do
  # post '/questions' => 'questions#create'
  # get '/questions' => 'questions#index'
  # get '/question/:id' => 'questions#view'
  # post '/question/:id/answer' => 'answers#create'
  # patch '/question/:id' => 'questions#update' #Takes text
  # get '/qustion/:id' => 'questions#edit'
  # get '/question/:id/answer/edit' => 'answers#edit'
  # delete '/question/:id' => 'questions#delete'
  # delete '/question/:question_id/answer/:id' => 'answers#delete'

  resources :questions
  resources :answers
end
