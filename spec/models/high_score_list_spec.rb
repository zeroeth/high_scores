require 'spec_helper'

describe HighScoreList do
  it { should have_many(:high_scores) } 
  it { should validate_presence_of(:game_id) }

  describe "#to_json" do
    let(:high_score) { Fabricate(:high_score) }
    let(:high_score_list) { Fabricate(:high_score_list, high_scores: [high_score])}
    it "should include children" do
      high_score_list.to_json.should include(high_score.name)
    end
  end
end
