defmodule PayPal.BillingAgreements.Common.AgreementTransaction do

  defstruct [
    :transaction_id,
    :status,
    :transaction_type,
    :amount,
    :fee_amount,
    :net_amount,
    :payer_email,
    :payer_name,
    :time_stamp,
    :time_zone
  ]

end
