Rails.application.routes.draw do
  # Routes for the Answer resource:
  # CREATE
  get '/new_answer' => 'answers#new'
  get '/create_answer' => 'answers#create'

  # READ
  get '/answers' => 'answers#index'
  get '/answers/:id' => 'answers#show'

  # UPDATE
  get '/answers/:id/edit' => 'answers#edit'
  get '/answers/:id/update' => 'answers#update'

  # DELETE
  get '/answers/:id/destroy' => 'answers#destroy'
  #------------------------------

  # Routes for the Question resource:
  # CREATE
  get '/new_question' => 'questions#new'
  get '/create_question' => 'questions#create'

  # READ
  get '/questions' => 'questions#index'
  get '/questions/:id' => 'questions#show'

  # UPDATE
  get '/questions/:id/edit' => 'questions#edit'
  get '/questions/:id/update' => 'questions#update'

  # DELETE
  get '/questions/:id/destroy' => 'questions#destroy'
  #------------------------------

  get 'tumblit' => 'application#forum'
 
end
