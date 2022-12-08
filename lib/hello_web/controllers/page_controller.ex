defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    conn
    |> put_root_layout(:admin)
    |> render(:home)
  end

  plug HelloWeb.Plugs.Locale, "en" when action in [:index]
end
