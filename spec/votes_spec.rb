require 'spec_helper'

describe Vote do
  describe 'associations' do
    before(:each) do
      @vote = Vote.new(author_id: 1, post_id: 1)
    end

    it "returns the id of the vote's author" do
      expect(@vote.author_id).to eq(1)
    end

    it "returns the id of the vote's post" do
      expect(@vote.post_id).to eq(1)
    end

    it 'verifies the belongs_to association of user' do
      should belong_to(:user)
    end

  describe 'validations' do
    it 'validates that the vote has an author_id' do
      should validate_presence_of(:author_id)
    end
  end
  end
end