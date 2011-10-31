require 'spec_helper'

describe HighScoresController do

  describe "create for existing game" do
    let(:high_score_list) { Fabricate(:high_score_list) }
    it "creates a high score for an existing game" do
      post 'create', :format => :json, :high_score_list_id => high_score_list.to_param, :high_score => { :name => "AXZ", :score => 123123 }

      high_score_list.reload.high_scores.last.name.should == "AXZ"
      response.should be_success
    end
  end

  describe "create for new game" do
    it "creates a high score for a new game" do
      post 'create', :format => :json, :high_score_list_id => "wowowo", :high_score => { :name => "AXZ", :score => 123123 }

      response.should be_success
      HighScoreList.last.game_id.should == "wowowo"
      HighScoreList.last.high_scores.last.name.should == "AXZ"
    end
  end
end
