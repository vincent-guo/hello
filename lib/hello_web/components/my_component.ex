defmodule MyComponent do
  use Phoenix.Component

  def greet(assigns) do
    ~H"""
    <p>Hwllo, <%= @name %>!</p>
    """
  end

  # embed all .heex templates in current directory, such as "greet.html.heex"
  embed_templates "*"
end
