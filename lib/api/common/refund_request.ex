defmodule PayPal.Common.RefundRequest do

  alias PayPal.Common.Amount
  
  defstruct amount: %Amount{},
    description: nil,
    refund_source: nil,
    reason: nil,
    invoice_number: nil,
    refund_advice: nil,
    payer_info: nil,
    supplementary_data: nil

end