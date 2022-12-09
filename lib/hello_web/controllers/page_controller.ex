defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(201, "123")
  end

  plug HelloWeb.Plugs.Locale, "en" when action in [:index]
end
