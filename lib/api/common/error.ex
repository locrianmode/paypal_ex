defmodule PayPal.Common.Error do
  
  defstruct name: nil,
    message: nil,
    details: [],
    information_link: nil,
    debug_id: nil,
    links: []

end