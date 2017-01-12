require 'spec_helper'

describe Comment do
  describe 'validations' do
    it 'it should validate an author_id' do
      should validate_presence_of :author_id
    end
  end
  describe 'associations' do
    it 'it should belong to a author' do
      should belong_to(:author)
    end
  end

  xdescribe "returns the id of the comment's author" do
  end
end
