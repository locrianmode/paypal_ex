defmodule PayPal.Common.CarrierAccount do

  alias PayPal.Common.CountryCode
  
  defstruct id: nil,
    phone_number: nil,
    external_customer_id: nil,
    phone_source: nil,
    country_code: %CountryCode{}

end