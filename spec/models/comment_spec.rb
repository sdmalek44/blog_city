require 'rails_helper'

describe Comment do
  describe 'validations' do
    it {should validate_presence_of :body}
  end
  describe 'relationships' do
    it {should belong_to :blog}
    it {should belong_to :user}
  end
end
