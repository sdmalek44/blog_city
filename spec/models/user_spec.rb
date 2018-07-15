require 'rails_helper'

describe User, type: :model do
  describe 'validations' do
    it {should validate_presence_of :email}
    it {should validate_presence_of :username}
    it {should validate_presence_of :password_digest}
    it {should validate_presence_of :role}

    it {should validate_uniqueness_of :username}
    it {should validate_uniqueness_of :email}

  end
  describe 'roles' do
    it 'can be created as an admin' do
      user = User.create!(email: 'malek_stephen@yahoo.com', username: 'pots', password: 'pigs', role: 1)

      expect(user.role).to eq("admin")
      expect(user.admin?).to be_truthy
    end
    it 'can be created as a default user' do
      user = User.create!(email: 'malek_stephen@yahoo.com', username: 'pots', password: 'pigs', role: 0)

      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy
    end
  end
end
