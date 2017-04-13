defmodule PayPal.Common.RelatedResources do
  
  alias PayPal.Common.{Authorization, Capture, Order, Refund, Sale}

  defstruct sale: %Sale{},
    authorization: %Authorization{},
    order: %Order{},
    capture: %Capture{},
    refund: %Refund{}

end