defmodule SearchDemoWeb.SearchComponent do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def handle_event("toggle_search", _, %{assigns: %{search_class: search_class}} = socket) do
    if search_class == "visible" do
      {:noreply, push_patch(socket, to: "/")}
    else
      {:noreply, push_patch(socket, to: "/?search")}
    end
  end
end
