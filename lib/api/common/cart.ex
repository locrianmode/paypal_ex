defmodule PayPal.Common.Cart do
  
  alias PayPal.Common.{Amount, ItemList, Payee, PaymentOptions}

  defstruct reference_id: nil,
    amount: %Amount{},
    payee: %Payee{},
    description: nil,
    note_to_payee: nil,
    custom: nil,
    invoice_number: nil,
    purchase_order: nil,
    soft_descriptor: nil,
    payment_options: %PaymentOptions{},
    item_list: %ItemList{},
    notify_url: nil,
    order_url: nil

end