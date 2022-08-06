# frozen_string_literal: true

require_relative 'lib/exchange_it'

user = ExchangeIt::User.new 'John', 'Doe'
p "Hello, #{user.name} #{user.surname}!"
p "User's acc uid:, #{user.account.uid}"

p user.balance
user.account.deposit 100
p user.balance
user.account.withdraw 120
p user.balance
