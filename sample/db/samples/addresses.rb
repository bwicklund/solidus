# frozen_string_literal: true
3.times do
  Spree::Address.create!(
    firstname: FFaker::Name.first_name,
    lastname: FFaker::Name.last_name,
    address1: FFaker::AddressUS.street_address,
    address2: [FFaker::AddressUS.secondary_address, ''].sample,
    city: FFaker::AddressUS.city,
    state: Spree::State.find_by!(name: FFaker::AddressUS.continental_state),
    zipcode: FFaker::AddressUS.zip_code,
    country: Spree::Country.find_by!(iso: "US"),
    phone: FFaker::PhoneNumber.phone_number
  )
end
