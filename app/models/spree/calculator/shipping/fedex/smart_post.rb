module Spree
  module Calculator::Shipping
    module Fedex
      class SmartPost < Spree::Calculator::Shipping::Fedex::Base
        preference :hub_id, :string, default: "5531"

        def self.description
          "FedEx SmartPost"
        end

        def shipping_options
          { service_type: "SMART_POST" }
        end
      end
    end
  end
end
