module Spree
  module Calculator::Shipping
    module Fedex
      class ExpressSaverTiered < ExpressSaver
        include Spree::TieredPricing
      end
    end
  end
end
