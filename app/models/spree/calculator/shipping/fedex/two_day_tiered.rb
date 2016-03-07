module Spree
  module Calculator::Shipping
    module Fedex
      class TwoDayTiered < TwoDay
        include Spree::TieredPricing
      end
    end
  end
end
