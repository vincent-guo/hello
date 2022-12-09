defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  plug :put_view, html: HelloWeb.PageHTML, json: HelloWeb.PageJson

  def home(conn, _params) do
    pages = [%{title: "foo"}, %{title: "bar"}]

    render(conn, :home, layout: false, pages: pages)
  end

  def show(conn, _params) do
    page = %{title: "foo"}

    render(conn, :show, page: page)
  end
end
