module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalEconomyTiered < InternationalEconomy
        include Spree::TieredPricing
      end
    end
  end
end
