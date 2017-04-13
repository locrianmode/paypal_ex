defmodule PayPal.Common.ExternalFunding do
  
  alias PayPal.Common.{Currency}
  
  defstruct reference_id: nil,
    code: nil,
    funding_account_id: nil,
    display_text: nil,
    amount: %Currency{},
    funding_instruction: nil

end