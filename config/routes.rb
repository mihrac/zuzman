Rails.application.routes.draw do
  devise_for :users
  resources :tags
  resources :blogs do
  	resources :comments
  end

  
  resources :questions do
  	member do
    put "like", to: "questions#upvote"
    put "dislike", to: "questions#downvote"
	end
  	resources :comments
  end



  resources :sub_categories
  resources :categories

  resources :comments do

  	resources :comments do
  		put "like", to: "comments#upvote"
    put "dislike", to: "comments#downvote"
  		 	member do
  	put "like", to: "comments#upvote"
    put "dislike", to: "comments#downvote"
end
	end
  end

root 'questions#index'

end
