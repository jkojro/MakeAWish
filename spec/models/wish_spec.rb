require 'rails_helper'

RSpec.describe Wish, type: :model do
  
  u = User.new(email: 'j@test.pl', password: 'password',
                       password_confirmation: 'password')
  it 'requires mywish' do
    wish = u.wishes.build(name: 'Mój wish', reciever: 'Janusz')
    expect(wish.valid?).to be_falsey
  end

  it 'requires name' do
    wish = u.wishes.build(mywish: 'Duży prezent', reciever: 'Janusz')
    expect(wish.valid?).to be_falsey
  end

  it 'requires reciever' do
    wish = Wish.new(mywish: 'Duży prezent')
    expect(wish.valid?).to be_falsey
  end

  it 'creates Wish with name and myWish' do
    wish = u.wishes.build(name: 'Mój wish', mywish: 'Duży prezent', reciever: 'Janusz' )
    expect(wish.valid?).to be_truthy
  end
end