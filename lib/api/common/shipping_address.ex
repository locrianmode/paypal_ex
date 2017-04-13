defmodule PayPal.Common.ShippingAddress do
  
  defstruct line1: nil,
    line2: nil,
    city: nil,
    country_code: nil,
    postal_code: nil,
    state: nil,
    phone: nil,
    normalization_status: nil,
    status: nil,
    type: nil,
    recipient_name: nil

end