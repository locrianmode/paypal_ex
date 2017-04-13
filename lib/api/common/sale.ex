defmodule PayPal.Common.Sale do
  
  @moduledoc """
id string
The ID of the sale transaction.
Read only.

purchase_unit_reference_id string
The ID of the transaction that corresponds to this sale transaction.
Read only.

amount object
The amount being collected.
Read only.

payment_mode enum
The transaction payment mode. Supported only when payment_method is paypal.
Read only.

Possible values: INSTANT_TRANSFER, MANUAL_BANK_TRANSFER, DELAYED_TRANSFER, ECHECK.

state enum
The sale transaction state.
Read only.

Possible values: completed, partially_refunded, pending, refunded, denied.

reason_code enum
The reason code that describes why the transaction state is pending or reversed. Supported only when the payment_method is paypal.
Read only.

Possible values: CHARGEBACK, GUARANTEE, BUYER_COMPLAINT, REFUND, UNCONFIRMED_SHIPPING_ADDRESS, ECHECK, INTERNATIONAL_WITHDRAWAL, RECEIVING_PREFERENCE_MANDATES_MANUAL_ACTION, PAYMENT_REVIEW, REGULATORY_REVIEW, UNILATERAL, VERIFICATION_REQUIRED, TRANSACTION_APPROVED_AWAITING_FUNDING.

protection_eligibility enum
The seller protection level in effect for the transaction. Supported only when the payment_method is paypal.
Read only.

Possible values: ELIGIBLE, PARTIALLY_ELIGIBLE, INELIGIBLE.

protection_eligibility_type enum
The seller protection type in effect for the transaction. Returned only when protection_eligibility is ELIGIBLE or PARTIALLY_ELIGIBLE. Supported only when the payment_method is paypal.
Read only.

Possible values: ITEM_NOT_RECEIVED_ELIGIBLE, UNAUTHORIZED_PAYMENT_ELIGIBLE, ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE.

clearing_time string
The date and time when the eCheck transaction is expected to clear. Returned for eCheck payments. Supported only when the payment_method is paypal.
Read only.

Format: date-time.

payment_hold_status enum
The recipient fund status. Returned only when the fund status is held.
Read only.

Possible values: HELD.

payment_hold_reasons array
The reason that PayPal holds the recipient fund. Set only if the payment hold status is held.
Read only.

transaction_fee object
The transaction fee that applies for this payment.
Read only.

receivable_amount object
The net amount that the merchant receives for this transaction in their receivable currency. Returned only in cross-currency use cases where a merchant bills a buyer in a non-primary currency for that buyer.
Read only.

exchange_rate string
The exchange rate for this transaction. Returned only in cross-currency use cases where a merchant bills a buyer in a non-primary currency for that buyer.
Read only.

fmf_details object
The fraud management filter (FMF) details for the payment that might result in accept, deny, or pending action. Returned in a payment response only if the merchant has enabled FMF in the profile settings and one of the fraud filters was triggered based on those settings. For more information, see Fraud Management Filters Summary.
Read only.

receipt_id string
The receipt ID, which is a payment ID number that is returned for guest users to identify the payment.
Read only.

Pattern: ^[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}$.

parent_payment string
The ID of the payment on which this transaction is based.
Read only.

processor_response object
The response codes that the processor returns for the submitted payment. Supported only when the payment_method is credit_card.
Read only.

billing_agreement_id string
The ID of the billing agreement. Used as reference to execute this transaction.
Read only.

create_time string
The date and time of the sale, in Internet date and time format as defined in RFC 3339 Section 5.6.
Read only.

Format: date-time.

update_time string
The date and time when the resource was last updated, in Internet date and time format in RFC 3339 Section 5.6.
Read only.

Format: date-time.

links array (contains the link object)
HATEOAS links related to this call.
Read only.  
  """

  alias PayPal.Common.{Amount, Currency, FmfDetails, ProcessorResponse}

  defstruct id: nil,
    purchase_unit_reference_id: nil,
    amount: %Amount{},
    payment_mode: nil,
    state: nil,
    reason_code: nil,
    protection_eligibility: nil,
    protection_eligibility_type: nil,
    clearing_time: nil,
    payment_hold_status: nil,
    payment_hold_reasons: nil,
    transaction_fee: %Currency{},
    receivable_amount: %Currency{},
    exchange_rate: nil,
    fmf_details: %FmfDetails{},
    receipt_id: nil,
    parent_payment: nil,
    processor_response: %ProcessorResponse{},
    billing_agreement_id: nil,
    create_time: nil,
    update_time: nil,
    links: []

end