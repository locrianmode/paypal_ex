defmodule PayPal.Common.Payment do
  
  alias PayPal.Common.{Payer, RedirectUrls}

  defstruct id: nil,
    intent: nil,
    payer: %Payer{},
    transactions: [],
    state: nil,
    experience_profile_id: nil,
    note_to_payer: nil,
    redirect_urls: %RedirectUrls{},
    failure_reason: nil,
    create_time: nil,
    update_time: nil,
    links: []

end