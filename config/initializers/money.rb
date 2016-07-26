# encoding : utf-8

MoneyRails.configure do |config|
  config.default_currency = :GBP

  config.amount_column = {
    column_name: 'charge',
    type: :integer,
    present: true,
    null: false
  }

  config.currency_column = {
    column_name: 'currency',
    type: :string,
    present: true,
    null: false,
  }
end
