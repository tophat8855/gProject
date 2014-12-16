Rails.application.routes.draw do

root 'welcome#index'

get '/bart' => 'pages#bart'
get 'results' => 'pages#results'

end
