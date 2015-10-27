require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class OneDayFreightSaturdayDelivery < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.one_day_freight_saturday_delivery")
        end

        def shipping_options
          { service_type: "FEDEX_1_DAY_FREIGHT_SATURDAY_DELIVERY" }
        end
      end
    end
  end
end
