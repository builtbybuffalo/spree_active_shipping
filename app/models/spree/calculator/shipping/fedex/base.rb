require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        include Spree::ThresholdPricing

        preference :signature_option, :string, default: "SERVICE_DEFAULT"

        def carrier
          carrier_details = {
            :key => Spree::ActiveShipping::Config[:fedex_key],
            :password => Spree::ActiveShipping::Config[:fedex_password],
            :account => Spree::ActiveShipping::Config[:fedex_account],
            :login => Spree::ActiveShipping::Config[:fedex_login],
            :test => Spree::ActiveShipping::Config[:test_mode]
          }

          ::ActiveShipping::FedEx.new(carrier_details)
        end
      end
    end
  end
end
