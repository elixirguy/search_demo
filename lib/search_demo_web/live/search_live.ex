defmodule SearchDemoWeb.SearchLive do
  use SearchDemoWeb, :live_view

  alias SearchDemo.Searches

  def mount(_params, _session, socket) do
    changeset = Searches.change_search(%Searches.Search{})

    {:ok,
      socket
      |> assign(changeset: changeset)}
  end

  def handle_params(_params, url, socket) do
    if String.match?(url, ~r/search/) do
      {:noreply, assign_search_class(socket, "visible")}
    else
      {:noreply, assign_search_class(socket)}
    end
  end

  defp assign_search_class(socket) do
    assign(socket, :search_class, "hidden")
  end

  defp assign_search_class(socket, class) do
    assign(socket, :search_class, class)
  end
end
