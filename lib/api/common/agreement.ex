defmodule PayPal.BillingAgreements.Common.Agreement do
  
  defstruct [
    :id, 
    :state, 
    :name, 
    :description, 
    :start_date, 
    :payer, 
    :shipping_address,
    :override_merchant_preferences,
    :override_charge_models,
    :plan,
    :links 
  ]

end