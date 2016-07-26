class HomeController < ApplicationController
  def index
    render locals: {
      current_stamp_price: Delivery.next_delivery_charge.format(display_free: true)
    }
  end
end
