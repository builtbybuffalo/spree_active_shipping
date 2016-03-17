module Spree
  module Calculator::Shipping
    module Fedex
      class SmartPostTiered < SmartPost
        include Spree::TieredPricing
      end
    end
  end
end
