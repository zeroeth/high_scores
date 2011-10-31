require 'spec_helper'

describe HighScoreListsController do

  describe "GET 'show'" do
    let(:high_score_list) { Fabricate(:high_score_list) }

    it "returns json" do
      get 'show', :id => high_score_list.to_param, :format => :json
      response.should be_success
      response.body.should include(high_score_list.to_json)
    end
  end

end
