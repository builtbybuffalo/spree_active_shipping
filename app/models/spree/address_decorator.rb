Spree::Address.class_eval do
  def to_activeshipping
    ActiveShipping::Location.new(
      name: full_name,
      address1: address1,
      address2: address2,
      country: country.iso,
      state: (state ? state.abbr : state_name),
      city: city,
      zip: zipcode,
      phone: phone
    )
  end
end
