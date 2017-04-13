defmodule PayPal.Common.CreditCardToken do
  
  defstruct credit_card_id: nil,
    payer_id: nil,
    last4: nil,
    type: nil,
    expire_month: nil,
    expire_year: nil

end