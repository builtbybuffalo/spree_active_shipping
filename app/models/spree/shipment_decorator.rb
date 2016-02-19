Spree::Shipment.class_eval do
  attr_accessor :width, :height, :depth

  validates :width, :height, :depth, presence: true, on: :dispatch

  def carrier
    return unless shipping_method.calculator.is_a? Spree::Calculator::Shipping::ActiveShipping::Base

    case shipping_method.calculator
    when Spree::Calculator::Shipping::Fedex::Base, Spree::Calculator::Shipping::Dpd::DpdExpress
      shipping_method.calculator.carrier(self)
    else
      shipping_method.calculator.carrier
    end
  end

  def send_to_carrier
    return unless carrier

    origin = order.store.to_activeshipping(stock_location)
    destination = order.ship_address.to_activeshipping

    shipment_packages = shipping_method.calculator.packages(to_package)
    shipment_line_items = shipping_method.calculator.line_items(line_items)
    options = shipping_method.calculator.shipping_options
    options.merge!(preferences: shipping_method.calculator.preferences)

    response = carrier.create_shipment(origin, destination, shipment_packages, shipment_line_items, options)
    label = response.labels.first

    update_columns tracking: label.tracking_number, label_data: label.img_data
  end

  alias_method :old_to_package, :to_package
  def to_package
    package = old_to_package
    package.width = width
    package.height = height
    package.depth = depth
    package.shipment_number = number
    package
  end
end
