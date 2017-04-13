defmodule PayPal.Common.AlternativePayment do
  
  defstruct account_id: nil,
    external_customer_id: nil,
    provider_id: nil,
    expiration_duration: nil,
    locale: nil

end