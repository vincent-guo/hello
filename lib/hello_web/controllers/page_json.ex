defmodule HelloWeb.PageJson do

  # ?_format=json
  def home(%{pages: pages}) do
    %{data: Enum.map(pages, fn page -> %{title: page.title} end)}
  end

  def show(%{page: page}) do
    %{data: %{title: page.title}}
  end
end
