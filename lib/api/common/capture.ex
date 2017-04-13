defmodule PayPal.Common.Capture do
  
  alias PayPal.Common.{Amount, Currency}

  defstruct id: nil,
    amount: %Amount{},
    is_final_capture: false,
    state: nil,
    reason_code: nil,    
    parent_payment: nil,
    invoice_number: nil,
    transaction_fee: %Currency{},
    create_time: nil,
    update_time: nil,
    links: []

end