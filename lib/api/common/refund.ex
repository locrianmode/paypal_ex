defmodule PayPal.Common.Refund do
  
  @moduledoc """
id string
The ID of the refund transaction. Maximum length is 17 characters.
Read only.

amount object
The refund amount. Includes both the amount refunded to the payer and amount of the fee refunded to the payee.
state enum
The state of the refund.
Read only.

Possible values: pending, completed, cancelled, failed.

reason string
The reason that the transaction is being refunded.
invoice_number string
Your own invoice or tracking ID number. Maximum length is 127 single-byte alphanumeric characters.
Maximum length: 127.

sale_id string
The ID of the sale transaction being refunded.
Read only.

capture_id string
The ID of the sale transaction being refunded.
Read only.

parent_payment string
The ID of the payment on which this transaction is based.
Read only.

description string
The refund description.
create_time string
The date and time when the refund was created, in Internet date and time format.
Read only.

Format: date-time.

update_time string
The date and time when the resource was last updated, in Internet date and time format.
Read only.

Format: date-time.

reason_code enum
The reason code for the pending refund state.
Read only.

Possible values: ECHECK.

refund_reason_code enum
Paypal assigned reason codes for the refund
Read only.

Possible values: ADJUSTMENT_REVERSAL, ADMIN_FRAUD_REVERSAL, ADMIN_REVERSAL, APPEAL, BUYER_COMPLAINT, CHARGEBACK, CHARGEBACK_SETTLEMENT, DENIED, DISPUTE_PAYOUT, FUNDING, GUARANTEE, LIMITS, NO_FAULT, OTHER, REFUND, REGULATORY_BLOCK, REGULATORY_REJECT, REGULATORY_REVIEW_EXCEEDING_SLA, RISK, SELLER_FAULT, SELLER_VOLUNTARY, THIRDPARTY_LOGISTICS_FAULT, UNAUTH_CLAIM, UNAUTH_SPOOF.

refund_funding_type enum
Details Indicate whether Refund amount is funded by Payee or other funding accounts
Read only.

Possible values: PAYOUT.

links array (contains the link object)
HATEOAS links related to this call.
Read only.  
  """

  alias PayPal.Common.{Amount}

  defstruct id: nil,
    amount: %Amount{},
    state: nil,
    reason: nil,
    invoice_number: nil,
    sale_id: nil,
    capture_id: nil,
    parent_payment: nil,
    description: nil,
    create_time: nil,
    update_time: nil,
    reason_code: nil,
    refund_reason_code: nil,
    refund_funding_type: nil,
    links: []

end