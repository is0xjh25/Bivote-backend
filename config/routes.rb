Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
		post '/login', to: 'auth#create'
		
		post '/users', to: 'users#create'
		get '/profile', to: 'users#info'
		patch '/profile', to: 'users#update'
		
		get '/vote/:id', to: 'vote_records#info'
		patch '/vote/:id', to: 'vote_records#update'

		get '/post/:id', to: 'posts#info'
		post '/post/:id', to: 'posts#create'
		delete '/post/:id', to: 'posts#destroy'

		post '/upvote/:id', to: 'upvotes#create'
		delete '/upvote/:id', to: 'upvotes#destroy'
		end
	end
end