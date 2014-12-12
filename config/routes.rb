Rails.application.routes.draw do

root 'welcome#index'

get '/bart' => 'pages#bart'

end
