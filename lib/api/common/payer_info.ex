defmodule PayPal.Common.PayerInfo do
  
  alias PayPal.Common.Address

  defstruct email: nil,
    salutation: nil,
    first_name: nil,
    middle_name: nil,
    last_name: nil,
    suffix: nil,
    payer_id: nil,
    phone: nil,
    phone_type: nil,
    birth_date: nil,
    tax_id: nil,
    tax_id_type: nil,
    country_code: nil,
    billing_address: %Address{},
    shipping_address: nil

end