Rails.application.routes.draw do
  get '/students', to: 'students#index'
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
  get 'students/find-by-name/:name', to: 'students#find_by_name'
  get '/students/:id', to: 'students#show'
end
