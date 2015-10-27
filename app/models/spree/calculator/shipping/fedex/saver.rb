module Spree
  module Calculator::Shipping
    module Fedex
      class Saver < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.saver")
        end

        def shipping_options
          { service_type: "FEDEX_EXPRESS_SAVER" }
        end
      end
    end
  end
end
