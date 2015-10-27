module Spree
  module Calculator::Shipping
    module Fedex
      class TwoDayFreightSaturdayDelivery < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.two_day_freight_saturday_delivery")
        end

        def shipping_options
          { service_type: "FEDEX_2_DAY_FREIGHT_SATURDAY_DELIVERY" }
        end
      end
    end
  end
end
