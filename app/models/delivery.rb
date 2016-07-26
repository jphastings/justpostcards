class Delivery < ActiveRecord::Base
  BASE_CHARGE = Money.new(10, :GBP)

  monetize :charge

  scope :created_within_a_week, -> { where('created_at > ?', Time.now - 7.days) }

  before_validation :default_values

  def self.next_delivery_charge
    created_within_a_week.count * BASE_CHARGE
  end

  private

  def default_values
    self.charge ||= self.next_delivery_charge
  end
end
