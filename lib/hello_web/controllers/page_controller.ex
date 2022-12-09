defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> redirect(to: ~p"/redirect_test")
  end

  def redirect_test(conn, _params) do
    render(conn, :home)
  end

  plug HelloWeb.Plugs.Locale, "en" when action in [:home]
end
