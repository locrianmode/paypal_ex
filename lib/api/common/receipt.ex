defmodule PayPal.Common.Receipt do
  
  alias PayPal.Common.ShippingAddress

  defstruct id: nil,
    transaction_id: nil,
    funding_sources: nil,
    items: [],
    shipping_address: %ShippingAddress{}

end