defmodule PayPal.Common.Address do

  # https://developer.paypal.com/docs/api/payments/#definition-address

  @moduledoc """
  | Property | Type | Description |
  | --- | --- | --- |
  | `line1` | string | The first line of the address. For example, number, street, and so on. Maximum length is 100 characters. |
  | `line2` | string | The second line of the address. For example, suite, apartment number, and so on. Maximum length is 100 characters. |
  | `city` | string | The city name. Maximum length is 50 characters. |
  | `country_code` | string | The two-character country code. |
  | `postal_code` | string | The zip code or equivalent. Typically required for countries that have them. Maximum length is 20 characters.Required in certain countries. |
  | `state` | string | The two-letter code for US states or the equivalent for other countries. Maximum length is 100 characters. |
  | `phone` | string | The phone number, in E.123 format. Maximum length is 50 characters. Format: phone. |
  | `normalization_status` | enum | The address normalization status. Returned only for payers from Brazil. Read only. Possible values: UNKNOWN, UNNORMALIZED_USER_PREFERRED, NORMALIZED, UNNORMALIZED. |
  | `status` | enum | The address status. Possible values: CONFIRMED, UNCONFIRMED. |
  | `type` | string | The type of address. For example, HOME_OR_WORK, GIFT, and so on. |
  """

  @type t(line1, line2, city, country_code, postal_code, state, phone, normalization_status, status, type) :: %PayPal.Common.Address{
    line1: line1, 
    line2: line2, 
    city: city, 
    country_code: country_code, 
    postal_code: postal_code, 
    state: state, 
    phone: phone, 
    normalization_status: normalization_status,
    status: status,
    type: type
  }
  
  @type t :: %PayPal.Common.Address{
    line1: charlist, 
    line2: charlist, 
    city: charlist, 
    country_code: charlist, 
    postal_code: charlist, 
    state: charlist, 
    phone: charlist, 
    normalization_status: nil,
    status: nil,
    type: nil
  }

  defstruct line1: nil,
    line2: nil,
    city: nil,
    country_code: nil,
    postal_code: nil,
    state: nil,
    phone: nil,
    normalization_status: nil,
    status: nil,
    type: nil

end