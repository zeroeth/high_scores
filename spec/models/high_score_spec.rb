require 'spec_helper'

describe HighScore do
  it { should belong_to(:high_score_list)      }
  it { should validate_presence_of(:name)      }
  it { should validate_presence_of(:score)     }
  it { should validate_numericality_of(:score) }

  describe "#top_ten" do
    let(:high_score_list) { Fabricate(:high_score_list) }
    let!(:high_scores) { 15.times.collect{|n| Fabricate(:high_score, :high_score_list => high_score_list) } }

    it "lists them in order of score" do
      given    = high_score_list.reload.high_scores.top_ten.all.map(&:score)
      expected = high_scores.map(&:score).sort.reverse[0...10]

      given.should == expected
    end

    it "limits the list to 10 items" do
      high_score_list.reload.high_scores.top_ten.all.count.should == 10
    end
  end
end
