defmodule PayPal.Common.ShippingDetails do
  
  alias PayPal.Common.Address

  defstruct estimated_delivery_date: nil,
    delivery_location_type: nil,
    delivery_location_id: nil,
    shipment_category: nil,
    fulfillment_address: %Address{},
    fulfillment_reference_number: nil

end