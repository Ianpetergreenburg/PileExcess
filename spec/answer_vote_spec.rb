require 'spec_helper'

describe AnswerVote do
  before(:each) do
    @answer_vote = AnswerVote.new(author_id: 1, answer_id: 1, vote_count: 888)
  end

    describe 'associations' do
      it 'verifies the belongs_to association of user' do
        should belong_to(:author)
      end
      it 'verifies the belongs_to association of answer' do
        should belong_to(:answer)
      end
    end

    describe 'attributes' do
      it "returns the id of the question vote's author" do
        expect(@answer_vote.author_id).to eq(1)
      end

      it "returns the id of the question vote's post" do
        expect(@answer_vote.answer_id).to eq(1)
      end
    end

    describe 'validations' do
      it 'validates that the answer has an author_id' do
        should validate_presence_of(:author_id)
      end
    end
end
