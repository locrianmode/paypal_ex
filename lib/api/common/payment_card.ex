defmodule PayPal.Common.PaymentCard do

  alias PayPal.Common.Address
  
  defstruct id: nil,
    number: nil,
    type: nil,
    expire_month: nil,
    expire_year: nil,
    start_month: nil,
    start_year: nil,
    cvv2: nil,
    first_name: nil,
    last_name: nil,
    billing_country: nil,
    billing_address: %Address{},
    external_customer_id: nil,
    status: nil,
    card_product_class: nil,
    valid_until: nil,
    issue_number: nil,
    links: []

end