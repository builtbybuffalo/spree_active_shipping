module Spree
  module Calculator::Shipping
    module Fedex
      class ThreeDayFreight < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.three_day_freight")
        end

        def shipping_options
          { service_type: "FEDEX_3_DAY_FREIGHT" }
        end
      end
    end
  end
end
