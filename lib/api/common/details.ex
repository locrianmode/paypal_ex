defmodule PayPal.Common.Details do
  
  defstruct subtotal: "", 
    shipping: "", tax: "", 
    handling_fee: "", 
    shipping_discount: "", 
    insurance: "", 
    gift_wrap: ""

end