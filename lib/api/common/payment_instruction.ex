defmodule PayPal.Common.PaymentInstruction do
  
  alias PayPal.Common.Currency

  defstruct reference_number: nil,
    instruction_type: nil,
    recipient_banking_instruction: nil,
    amount: %Currency{},
    payment_due_date: nil,
    note: nil,
    links: []

end