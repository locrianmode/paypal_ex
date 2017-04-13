defmodule PayPal.Common.CreditCard do
  
  defstruct number: nil,
    type: nil,
    expire_month: nil,
    expire_year: nil,
    cvv2: nil,
    first_name: nil,
    last_name: nil,
    billing_address: nil,
    links: []

end