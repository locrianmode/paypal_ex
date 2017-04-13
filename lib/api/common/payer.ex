defmodule PayPal.Common.Payer do
  
  alias PayPal.Common.PayerInfo
  
  defstruct payer_method: nil,
    status: nil,
    funding_instruments: [],
    payer_info: %PayerInfo{}

end