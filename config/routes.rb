Rails.application.routes.draw do

  devise_for :users, path: '', path_names: {sign_in: 'signin', sign_out: 'signout'}


  root "links#index"

  resources :links do
    member do
      get "like", to:    "links#upvote"
      get "dislike", to: "links#downvote"
    end
  end
end
