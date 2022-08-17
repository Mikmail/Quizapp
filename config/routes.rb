Rails.application.routes.draw do
  root "start_page#index"
  get 'questions/show'
  get "/questions", to: "questions#show"

  resources :quizzes do
    resources :questions
  end
end
