require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class ExpressSaver < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.express_saver")
        end

        def shipping_options
          { service_type: "FEDEX_EXPRESS_SAVER" }
        end
      end
    end
  end
end
