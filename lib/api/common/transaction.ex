defmodule PayPal.Common.Transaction do
  
  @moduledoc """
reference_id string
Optional. The merchant-provided ID for the purchase unit.
Maximum length: 256.

amount object
The amount to collect.
payee object
The recipient of the funds in this transaction.
description string
The description of what is being paid for.
Maximum length: 127.

note_to_payee string
An optional note to the recipient of the funds in this transaction.
Maximum length: 255.

custom string
A free-form field for clients' use.
Maximum length: 127.

invoice_number string
The invoice number to track this payment.
Maximum length: 127.

purchase_order string
purchase order is number or id specific to this payment
Maximum length: 127.

soft_descriptor string
The soft descriptor that is used when charging this funding source. If the string's length is greater than the maximum allowed length, the string is truncated.
Maximum length: 22.

payment_options object
The payment options requested for this transaction.
item_list object
The list of items being paid for.
notify_url string
The URL to send payment notifications.
Maximum length: 2048.

Format: uri.

order_url string
The URL on the merchant site related to this payment.
Maximum length: 2048.

Format: uri.

related_resources array (contains the related_resources object)
The financial transactions that are related to the payment. The related resources include sales, authorizations, captures, and refunds. To get information about a resource, use the ID returned for that resource. For example, to show details for a related authorization, use the ID returned in the authorization object. You can also use the HATEOAS links for a related resource to complete operations for that resource. For example, a sale object provides a refund link that enables you to refund the sale.
Read only.  
  """

  alias PayPal.Common.{Amount, ItemList, Payee, PaymentOptions, RelatedResources}

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
    order_url: nil,
    related_resources: [%RelatedResources{}]

end