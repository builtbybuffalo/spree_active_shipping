require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class FirstOvernight < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.first_overnight")
        end

        def shipping_options
          { service_type: "FIRST_OVERNIGHT" }
        end
      end
    end
  end
end
