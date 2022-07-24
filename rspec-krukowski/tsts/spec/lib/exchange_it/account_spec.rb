# frozen_string_literal: true

RSpec.describe ExchangeIt::Account do
  let(:user_class) { Struct.new(:name, :surname) }
  let(:john) { described_class.new(user_class.new('John', 'Doe')) }

  it 'has zero balance' do
    # puts "user class: #{user_class}"
    # puts "john.class: #{john.class}"
    # puts "john: #{john}"
    # puts "john.hash: #{john.hash}"
    expect(john.balance).to eq(0)
  end

  it 'has proper uid' do
    expect(john.uid).to be_an_instance_of(String)
    hash = john.hash 'John', 'Doe'
    # puts hash
    expect(john.uid).to eq(hash)
  end
end
