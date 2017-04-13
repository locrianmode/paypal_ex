defmodule PayPal.Common.ApplePayToken do
  
  alias PayPal.Common.Address

  defstruct payment_token: nil,
    first_name: nil,
    last_name: nil,
    billing_addresss: %Address{},
    payment_method_display_name: nil,
    payment_method_network: nil,
    payment_method_type: nil,
    apple_transaction_identifier: nil

end