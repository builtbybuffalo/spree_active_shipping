require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalPriorityFreight < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.intl_priority_freight")
        end

        def shipping_options
          { service_type: "INTERNATIONAL_PRIORITY_FREIGHT" }
        end
      end
    end
  end
end
