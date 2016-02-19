Spree::Store.class_eval do
  preference :dpd_username, :string
  preference :dpd_password, :string
  preference :dpd_account_id, :string

  preference :fedex_login, :string, :default => "meter_no"
  preference :fedex_password, :string, :default => "special_sha1_looking_thing_sent_via_email"
  preference :fedex_account, :string, :default => "account_no"
  preference :fedex_key, :string, :default => "authorization_key"

  def to_activeshipping(stock_location)
    ActiveShipping::Location.new(
      name: name,
      company: name,
      address1: stock_location.address1,
      address2: stock_location.address2,
      country: stock_location.country.iso,
      state: (stock_location.state ? stock_location.state.abbr : stock_location.state_name),
      city: stock_location.city,
      zip: stock_location.zipcode,
      phone: telephone
    )
  end
end
