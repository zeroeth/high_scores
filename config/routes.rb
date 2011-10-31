HighScores::Application.routes.draw do
  resources :high_score_lists do
    resources :high_scores
  end

end
