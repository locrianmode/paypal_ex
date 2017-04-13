defmodule PayPal.Common.DetailedRefund do
  
  alias PayPal.Common.{Amount, Currency}

  defstruct id: nil,
    amount: %Amount{},
    state: nil,
    reason: nil,
    invoice_number: nil,
    sale_id: nil,
    capture_id: nil,
    parent_payment: nil,
    description: nil,
    create_time: nil,
    update_time: nil,
    reason_code: nil,
    refund_reason_code: nil,
    refund_funding_type: nil,
    links: [],
    custom: nil,
    refund_to_payer: %Currency{},
    refund_to_external_funding: [],
    refund_from_transaction_fee: %Currency{},
    refund_from_received_amount: %Currency{},
    total_refunded_amount: %Currency{},
    refund_to_msb: %Currency{}
    
end