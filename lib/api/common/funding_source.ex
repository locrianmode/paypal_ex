defmodule PayPal.Common.FundingSource do
  
  alias PayPal.Common.{CreditCard, CreditCardToken, Currency}

  defstruct credit_card: %CreditCard{},
    credit_card_token: %CreditCardToken{},
    funding_mode: nil,
    funding_instrument_type: nil,
    soft_descriptot: nil,
    amount: %Currency{},
    negative_balance_amount: %Currency{},
    legal_text: nil,
    terms: nil,
    funding_detail: nil,
    funding_selection_preference: nil,
    additional_text: nil,
    links: []

end