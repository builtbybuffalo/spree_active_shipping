module Spree
  module Calculator::Shipping
    module Fedex
      class TwoDay < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.two_day")
        end

        def shipping_options
          { service_type: "FEDEX_2_DAY" }
        end
      end
    end
  end
end
