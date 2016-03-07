module Spree::TieredPricing
  extend ActiveSupport::Concern

  included do
    preference :price_tiers, :array, default: []

    undef_method :preferred_base_cost, :preferred_base_cost=
    undef_method :preferred_subtotal_threshold, :preferred_subtotal_threshold=
    undef_method :preferred_increased_cost, :preferred_increased_cost=

    class << self
      alias_method :old_description, :description
      def description
        "#{old_description} Tiered"
      end
    end

    def preferred_price_tiers=(tiers)
      tiers = tiers.values.select { |t| t["subtotal"].present? && t["cost"].present? }
      tiers = tiers.map { |t| t.map { |k, v| [k, v.to_f] }.to_h }
      tiers = tiers.sort_by { |t| t["subtotal"] }

      preferences[:price_tiers] = tiers
      preferences_will_change! if respond_to?(:preferences_will_change!)
    end
  end

  def compute_package(package)
    tier = preferred_price_tiers.reverse.detect { |tier| package.order.item_total >= tier["subtotal"] }

    tier.try!(:[], "cost")
  end
end
