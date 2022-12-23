Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'answer', to: 'questions#answer'
  get root to: 'questions#ask'
end
