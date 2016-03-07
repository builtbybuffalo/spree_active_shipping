module Spree
  module Calculator::Shipping
    module Fedex
      class ManualTiered < Manual
        include Spree::TieredPricing
      end
    end
  end
end
