module Spree
  module Calculator::Shipping
    module Fedex
      class Dummy < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          "Fedex Unspecified"
        end

        def available?(_)
          false
        end
      end
    end
  end
end
