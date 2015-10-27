require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class PriorityOvernight < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.priority_overnight")
        end

        def shipping_options
          { service_type: "PRIORITY_OVERNIGHT" }
        end
      end
    end
  end
end
