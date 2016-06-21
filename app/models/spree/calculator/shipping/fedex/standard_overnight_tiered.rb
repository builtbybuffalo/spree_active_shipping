module Spree
  module Calculator::Shipping
    module Fedex
      class StandardOvernightTiered < StandardOvernight
        include Spree::TieredPricing
      end
    end
  end
end
