Rails.application.routes.draw do
  # this is the "/" route root
  root 'demo#index'
  # default route
  get 'demo/index'
  # match routes basic matches
  get ':controller(/:action(/:id))'
  # ex GET /student/edit/52 ==> student controller, edit action id 52
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
