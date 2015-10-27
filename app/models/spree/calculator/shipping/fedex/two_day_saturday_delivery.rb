module Spree
  module Calculator::Shipping
    module Fedex
      class TwoDaySaturdayDelivery < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.two_day_saturday_delivery")
        end

        def shipping_options
          { service_type: "FEDEX_2_DAY_SATURDAY_DELIVERY" }
        end
      end
    end
  end
end
