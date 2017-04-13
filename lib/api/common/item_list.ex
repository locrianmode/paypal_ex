defmodule PayPal.Common.ItemList do
  
  alias PayPal.Common.Address

  defstruct items: [],
    shipping_address: %Address{},
    shipping_method: nil,
    shipping_phone_number: nil

end