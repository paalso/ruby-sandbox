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
  end
end
