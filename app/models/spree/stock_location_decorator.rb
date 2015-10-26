Spree::StockLocation.class_eval do
  validates_presence_of :address1, :city, :zipcode, :country_id
  validate :state_id_or_state_name_is_present

  def state_id_or_state_name_is_present
    if state_id.nil? && state_name.nil?
        errors.add(:state_name, "can't be blank")
    end
  end

  def to_activeshipping
    ActiveShipping::Location.new(
      name: address1,
      company: address1,
      phone: "111111111111",

      address1: address1,
      address2: address2,
      country: country.iso,
      state: (state ? state.abbr : state_name),
      city: city,
      zip: zipcode
    )
  end
end
