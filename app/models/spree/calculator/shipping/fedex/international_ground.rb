require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalGround < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.intl_ground")
        end

        def shipping_options
          { service_type: "INTERNATIONAL_GROUND" }
        end
      end
    end
  end
end
