defmodule PayPal.Common.Authorization do
  
  alias PayPal.Common.Amount

  defstruct id: nil,
    amount: %Amount{},
    payment_mode: nil,
    state: nil,
    reason_code: nil,
    pending_reason: nil,
    protection_eligibility: nil,
    protection_eligibility_type: nil,
    fmf_details: nil,
    parent_payment: nil,
    processor_response: nil,
    valid_until: nil,
    create_time: nil,
    update_time: nil,
    reference_id: nil,
    receipt_id: nil,
    links: []

end