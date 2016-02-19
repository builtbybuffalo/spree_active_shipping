require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Dpd
      class DpdExpress < Spree::Calculator::Shipping::ActiveShipping::Base
        include Spree::ThresholdPricing

        preference :network_code, :string, nil

        def self.description
          "DPD Express"
        end

        def carrier(shipment)
          carrier_details = {
            username: shipment.order.store.preferred_dpd_username,
            password: shipment.order.store.preferred_dpd_password,
            account_id: shipment.order.store.preferred_dpd_account_id,
            test: Spree::ActiveShipping::Config[:test_mode]
          }

          carrier = ::ActiveShipping::DPD.new(carrier_details)
        end

        def available?(_)
          preferred_network_code.present? ? super : false
        end

        def shipping_options
          { network_code: preferred_network_code }
        end
      end
    end
  end
end
