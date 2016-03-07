module Spree
  module Calculator::Shipping
    module Dpd
      class DpdExpressTiered < DpdExpress
        include Spree::TieredPricing
      end
    end
  end
end
