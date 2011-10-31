HighScores::Application.routes.draw do
  get "high_scores/create"

  resources :high_score_lists do
    resources :high_scores
  end

end
