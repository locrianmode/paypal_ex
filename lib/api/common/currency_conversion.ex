defmodule PayPal.Common.CurrencyConversion do
  
  defstruct conversion_date: nil,
    from_currency: nil,
    from_amount: nil,
    to_currency: nil,
    to_amount: nil,    
    conversion_type: nil,    
    conversion_type_changeable: nil,
    links: []

end