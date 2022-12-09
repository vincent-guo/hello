defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    redirect(conn, external: "https://elixir-lang.org/")
  end

  def redirect_test(conn, _params) do
    render(conn, :home)
  end

  plug HelloWeb.Plugs.Locale, "en" when action in [:home]
end
