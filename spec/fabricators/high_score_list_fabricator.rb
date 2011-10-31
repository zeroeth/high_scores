Fabricator(:high_score_list) do
  game_id { "game_#{rand(100)}_#{Time.now.to_f}" }
end
