module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalPriorityTiered < InternationalPriority
        include Spree::TieredPricing
      end
    end
  end
end
