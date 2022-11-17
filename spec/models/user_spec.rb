require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'Ahmad', email: 'ahmad@gmail.com', password: 123456, password_confirmation: 123456)
    @user.save
  end

  it 'is valid' do
    expect(@user).to be_valid
  end

  it 'name should be present' do
    @user.name = nil
    expect(@user).to_not be_valid
  end
end
