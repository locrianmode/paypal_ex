defmodule PayPal.Common.ExtendedBankAccount do
  
  defstruct account_number: nil,
    account_number_type: nil,
    routing_number: nil,
    account_type: nil,
    account_name: nil,
    check_type: nil,
    auth_type: nil,
    auth_capture_timestamp: nil,
    bank_name: nil,
    country_code: nil,
    first_name: nil,
    last_name: nil,
    birth_date: nil,
    state: nil,
    confirmation_status: nil,
    payer_id: nil, # deprecated
    external_customer_id: nil,
    merchant_id: nil,
    create_time: nil,
    update_time: nil,
    valid_until: nil,
    links: []

end