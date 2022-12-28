defmodule HelloWeb.CartHTML do
  use HelloWeb, :html

  import Phoenix.HTML.Form

  alias Hello.ShoppingCart

  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val, 2)}"

  embed_templates "cart_html/*"
end
