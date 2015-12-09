require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Dpd
      class DpdExpress < Spree::Calculator::Shipping::ActiveShipping::Base
        include Spree::ThresholdPricing

        def self.description
          "DPD Express"
        end

        def carrier
          carrier_details = {
            :username => Spree::ActiveShipping::Config[:dpd_username],
            :password => Spree::ActiveShipping::Config[:dpd_password],
            :account_id => Spree::ActiveShipping::Config[:dpd_account_id],
            :test => Spree::ActiveShipping::Config[:test_mode]
          }

          carrier = ::ActiveShipping::DPD.new(carrier_details)
        end
      end
    end
  end
end
