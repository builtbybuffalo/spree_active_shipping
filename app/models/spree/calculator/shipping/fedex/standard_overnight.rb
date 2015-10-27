module Spree
  module Calculator::Shipping
    module Fedex
      class StandardOvernight < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.standard_overnight")
        end

        def shipping_options
          { service_type: "STANDARD_OVERNIGHT" }
        end
      end
    end
  end
end
