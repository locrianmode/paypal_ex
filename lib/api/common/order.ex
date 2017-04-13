defmodule PayPal.Common.Order do
  
  @moduledoc """
id string
The ID of the order transaction.
Read only.

reference_id string
The ID of the purchase unit that is associated with this object. Obsolete. Used only in cart_base.
Read only.

amount object
The amount to collect.
payment_mode enum
The transaction payment mode.
Read only.

Possible values: INSTANT_TRANSFER, MANUAL_BANK_TRANSFER, DELAYED_TRANSFER, ECHECK.

state enum
The order transaction state.
Read only.

Possible values: pending, completed, voided, authorized, captured.

reason_code enum
The reason code that describes why the transaction state is pending or reversed. Eventually, this parameter will replace the pending_reason parameter. Supported only when the payment_method is paypal.
Read only.

Possible values: PAYER_SHIPPING_UNCONFIRMED, MULTI_CURRENCY, RISK_REVIEW, REGULATORY_REVIEW, VERIFICATION_REQUIRED, ORDER, OTHER.

pending_reason enum
DEPRECATED The reason code that describes why the transaction state is pending. Obsolete. Retained for backward compatibility. Use reason_code parameter instead.
Read only.

Possible values: payer_shipping_unconfirmed, multi_currency, risk_review, regulatory_review, verification_required, order, other.

protection_eligibility enum
The level of seller protection in effect for the transaction.
Read only.

Possible values: ELIGIBLE, PARTIALLY_ELIGIBLE, INELIGIBLE.

protection_eligibility_type enum
The kind of seller protection in effect for the transaction. Returned only when the protection_eligibility property is ELIGIBLE or PARTIALLY_ELIGIBLE. Supported only when the payment_method is paypal. One or both of these values can be returned:
ITEM_NOT_RECEIVED_ELIGIBLE. Sellers are protected against claims for items not received.
UNAUTHORIZED_PAYMENT_ELIGIBLE. Sellers are protected against claims for unauthorized payments.
Read only.

Possible values: ITEM_NOT_RECEIVED_ELIGIBLE, UNAUTHORIZED_PAYMENT_ELIGIBLE, ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE.

parent_payment string
The ID of the payment on which this transaction is based.
Read only.

fmf_details object
The fraud management filter (FMF) details applied for the payment that can result in an accept, deny, or pending action.
Read only.

create_time string
The date and time when the resource was created, , in Internet date and time format.
Read only.

Format: date-time.

update_time string
The date and time when the resource was last updated, in Internet date and time format.
Read only.

Format: date-time.

links array (contains the link object)
HATEOAS links related to this call.
Read only.  
  """

  alias PayPal.Common.{Amount, FmfDetails}

  defstruct id: nil,
    reference_id: nil,
    amount: %Amount{},
    payment_mode: nil,
    state: nil,
    reason_code: nil,
    pending_reason: nil, # deprecated
    protection_eligibility: nil,
    protection_eligibility_type: nil,
    parent_payment: nil,
    fmf_details: %FmfDetails{},
    create_time: nil,
    update_time: nil,
    links: []

end