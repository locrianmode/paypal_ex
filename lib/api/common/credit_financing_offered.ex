defmodule PayPal.Common.CreditFinancingOffered do
  
  alias PayPal.Common.{Currency}

  defstruct total_cost: %Currency{},
    term: nil,
    monthly_payment: %Currency{},
    total_interest: %Currency{},
    payer_acceptance: nil,
    cart_amount_immutable: false

end