Rails.application.routes.draw do
  get 'assessments/index'
  root "assessments#index"
  get "/assessments", to: "assessments#index"

  resources :quizzes do
    resources :questions
  end
end
