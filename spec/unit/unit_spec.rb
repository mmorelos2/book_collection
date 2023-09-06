# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
        title: 'harry potter',
        author: 'Some guy',
        price: 29.99,
        published_date: Date.new(2023, 9, 4)
      )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without published_date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end