require 'rails_helper'

describe BlogCategory, type: :model do
  describe 'relationships' do
    it {should belong_to :blog}
    it {should belong_to :category}
  end
end
