Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  resources :tags

   resources :blogs do
    member do
    put "like", to: "blogs#upvote"
    put "dislike", to: "blogs#downvote"
  end
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
    	member do
  	put "like", to: "comments#upvote"
    put "dislike", to: "comments#downvote"
end
	end
  end

  resources :users do
    resources :questions
  end

root 'home#index'

end
