defmodule PayPal.Common.Incentive do
  
  alias PayPal.Common.Currency

  defstruct id: nil,
    code: nil,
    name: nil,
    description: nil,
    minimum_purchase_amount: %Currency{},
    logo_image_url: nil,
    expiry_date: nil,
    type: nil,
    terms: nil
    
end