module Spree
  module Calculator::Shipping
    module Fedex
      class ThreeDayFreightSaturdayDelivery < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.three_day_freight_saturday_delivery")
        end

        def shipping_options
          { service_type: "FEDEX_3_DAY_FREIGHT_SATURDAY_DELIVERY" }
        end
      end
    end
  end
end
