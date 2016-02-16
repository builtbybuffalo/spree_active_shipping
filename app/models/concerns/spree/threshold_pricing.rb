module Spree
  module ThresholdPricing
    extend ActiveSupport::Concern

    included do
      preference :base_cost, :decimal, default: 0
      preference :subtotal_threshold, :decimal, default: 0
      preference :increased_cost, :decimal, default: 0
      preference :currency, :string, default: ->{ Spree::Config[:currency] }
    end

    def compute_package(package)
      preferred_base_cost
    end
  end
end
