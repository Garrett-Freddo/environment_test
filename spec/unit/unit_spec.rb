# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: 'Garrett Freddo', title: 'harry potter', price: 12.94, published_date: DateTime.new(1999).to_s(:db))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: 'Garrett Freddo', title: 'harry potter', price: 12.94, published_date: DateTime.new(1999).to_s(:db))

  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end


RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: 'Garrett Freddo', title: 'harry potter', price: 12.94, published_date: DateTime.new(1999).to_s(:db))

  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end


RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: 'Garrett Freddo', title: 'harry potter', price: 12.94,published_date: DateTime.new(1999).to_s(:db))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end
