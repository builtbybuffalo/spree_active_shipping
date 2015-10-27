require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalPrioritySaturdayDelivery < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.intl_priority_saturday_delivery")
        end

        def shipping_options
          { service_type: "INTERNATIONAL_PRIORITY_SATURDAY_DELIVERY" }
        end
      end
    end
  end
end
