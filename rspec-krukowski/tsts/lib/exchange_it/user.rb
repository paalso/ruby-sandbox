# frozen_string_literal: true

module ExchangeIt
  class User
    extend Forwardable

    attr_reader :name, :surname, :account

    # проброс поля balance из класса account (с помощью модуля forwardable)?
    def_delegators :account, :balance

    def initialize(name, surname)
      @name = name.to_s
      @surname = surname.to_s
      create_account
    end

    private

    def create_account
      @account = Account.new self
    end
  end
end
