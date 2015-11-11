Spree::Admin::OrdersController.class_eval do
  before_action :load_shipment, only: [:shipment, :dispatch_shipment]

  def dispatch_shipment
    @shipment.attributes = dispatch_shipment_params

    if @shipment.valid? :dispatch
      @shipment.send_to_carrier
      @shipment.ship!
      redirect_to edit_admin_order_path(@shipment.order)
    else
      redirect_to :back
    end
  end

  private

  def load_shipment
    @order = Spree::Order.friendly.find(params[:order_id])
    @shipment = @order.shipments.friendly.find(params[:shipment_id])
  end

  def dispatch_shipment_params
    params.require(:shipment).permit(:weight, :width, :height, :depth)
  end
end
