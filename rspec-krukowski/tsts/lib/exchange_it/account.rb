# frozen_string_literal: true

module ExchangeIt
  class Account
    # вот поэтому у account появляется метод hash, к-й перезаписывает оригинальный?
    include ExchangeIt::Utils::Uid
    attr_reader :uid, :balance

    def initialize(user)
      @uid = hash user.name, user.surname
      @balance = 0
    end

    def transfer(receiver, amount)
      withdraw amount
      receiver.deposit amount
    end

    def withdraw(amount)
      raise ExchangeIt::IncorrectSum('Amount must be positive') unless amount.positive?
      raise ExchangeIt::NotEnoughFunds("Available: #{@balanse} but tried to withdraw #{amount}") if amount > @balance

      @balance -= amount
    end

    def depost(amount)
      raise ExchangeIt::IncorrectSum('Amount must be positive') unless amount.positive?

      @balance += amount
    end
  end
end
