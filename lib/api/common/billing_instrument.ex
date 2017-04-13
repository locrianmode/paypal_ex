defmodule PayPal.Common.BillingInstrument do
  
  alias PayPal.Common.InstallmentOption

  defstruct billing_agreement_id: nil,
    selected_installment_option: %InstallmentOption{}

end