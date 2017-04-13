defmodule PayPal.Common.Amount do
  
  alias PayPal.Common.Details

  defstruct currency: nil, 
    total: nil, 
    details: %Details{}

end