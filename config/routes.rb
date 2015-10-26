Spree::Core::Engine.add_routes do
  namespace :admin do
    resource :active_shipping_settings, only: [:show, :update, :edit]

    resources :orders, only: [] do
      get "/shipment/:shipment_id", to: "orders#shipment", as: :prepare_shipment
      post "/shipment/:shipment_id", to: "orders#dispatch_shipment", as: :dispatch_shipment
    end

    resources :products, only: [] do
      resources :product_packages
    end
  end
end
