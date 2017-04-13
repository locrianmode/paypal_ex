defmodule PayPal.Common.ProcessorResponse do
  
  @moduledoc """
response_code string
The PayPal normalized response code, which is generated from the processor's specific response code.
Read only.

Maximum length: 4.

avs_code string
The Address Verification System (AVS) response code.
Read only.

Maximum length: 1.

Pattern: [A-z0-9]{1}.

cvv_code string
The CVV system response code.
Read only.

Maximum length: 1.

Pattern: [A-z0-9]{1}.

advice_code enum
The merchant advice on how to handle declines for recurring payments.
Read only.

Possible values: 01_NEW_ACCOUNT_INFORMATION, 02_TRY_AGAIN_LATER, 02_STOP_SPECIFIC_PAYMENT, 03_DO_NOT_TRY_AGAIN, 03_REVOKE_AUTHORIZATION_FOR_FUTURE_PAYMENT, 21_DO_NOT_TRY_AGAIN_CARD_HOLDER_CANCELLED_RECURRRING_CHARGE, 21_CANCEL_ALL_RECURRING_PAYMENTS.

eci_submitted string
The processor-provided authorization response.
Read only.

vpas string
The processor-provided Visa Payer Authentication Service status.
Read only.  
  """
  
  defstruct response_code: nil,
    avs_code: nil,
    cvv_code: nil,
    advice_code: nil,
    eci_submitted: nil,
    vpas: nil

end