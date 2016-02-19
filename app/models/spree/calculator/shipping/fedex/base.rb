require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        include Spree::ThresholdPricing

        preference :signature_option, :string, default: "SERVICE_DEFAULT"

        def carrier(shipment)
          carrier_details = {
            key: shipment.order.store.preferred_fedex_key,
            password: shipment.order.store.preferred_fedex_password,
            account: shipment.order.store.preferred_fedex_account,
            login: shipment.order.store.preferred_fedex_login,
            test: Spree::ActiveShipping::Config[:test_mode]
          }

          ::ActiveShipping::FedEx.new(carrier_details)
        end
      end
    end
  end
end
