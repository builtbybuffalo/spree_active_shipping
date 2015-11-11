require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Dpd
      class DpdExpress < Spree::Calculator::Shipping::ActiveShipping::Base
        preference :base_cost, :decimal, default: 0
        preference :subtotal_threshold, :decimal, default: 0
        preference :increased_cost, :decimal, default: 0
        preference :currency, :string, default: ->{ Spree::Config[:currency] }

        def self.description
          "DPD Express"
        end

        def compute_package(package)
          amount = total(package.contents)

          if preferred_subtotal_threshold > 0 && amount > preferred_subtotal_threshold
            preferred_increased_cost
          else
            preferred_base_cost
          end
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
