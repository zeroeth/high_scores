require 'spec_helper'

describe HighScoreList do
  it { should have_many(:high_scores) } 
  it { should validate_presence_of(:game_id) }
end
