module Spree
  module Calculator::Shipping
    module Fedex
      class Manual < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          "Fedex Manual"
        end
      end
    end
  end
end
