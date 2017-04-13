defmodule PayPal.BillingAgreements.Common.BankToken do

  defstruct [
    :bank_id,
    :external_customer_id,
    :mandate_reference_number
  ]

end