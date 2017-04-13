defmodule PayPal.Common.FundingOption do
  
  alias PayPal.Common.{CurrencyConversion, FundingInstrument, InstallmentOptions}

  defstruct id: nil,
    funding_sources: nil,
    backup_funding_instrument: %FundingInstrument{},
    currency_conversion: %CurrencyConversion{},
    installment_info: %InstallmentOptions{},
    links: []

end