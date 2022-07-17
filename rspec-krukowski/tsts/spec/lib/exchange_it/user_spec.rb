# frozen_string_literal: true

RSpec.describe ExchangeIt::User do
  it 'returns name' do
    user = ExchangeIt::User.new 'John', 'Doe'
    user.name.expect(user.name).to eq('John')
  end
end
