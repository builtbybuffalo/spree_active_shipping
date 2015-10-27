module Spree
  module Calculator::Shipping
    module Fedex
      class TwoDayFreight < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.two_day_freight")
        end

        def shipping_options
          { service_type: "FEDEX_2_DAY_FREIGHT" }
        end
      end
    end
  end
end
