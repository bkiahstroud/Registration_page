Rails.application.routes.draw do

    get '/register' => 'user#register'
    post '/register' => 'user#register'

    get '/login' => 'user#login'
    post '/login' => 'user#login'

    get '/logout' => 'user#logout'
    post '/logout' => 'user#logout'

end
