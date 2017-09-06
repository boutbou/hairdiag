MoneyRails.configure do |config|
  config.default_currency = :eur

  # config.sign_before_symbol = nil

  config.default_format = {
  #   :no_cents_if_whole => nil,
  #   :symbol => nil,
     :symbol_position => :after,
  }

end


