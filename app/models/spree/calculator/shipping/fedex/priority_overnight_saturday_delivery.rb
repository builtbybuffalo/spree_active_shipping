module Spree
  module Calculator::Shipping
    module Fedex
      class PriorityOvernightSaturdayDelivery < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.priority_overnight_saturday_delivery")
        end

        def shipping_options
          { service_type: "PRIORITY_OVERNIGHT_SATURDAY_DELIVERY" }
        end
      end
    end
  end
end
