module Spree
  module Calculator::Shipping
    module Fedex
      class GroundTiered < Ground
        include Spree::TieredPricing
      end
    end
  end
end
