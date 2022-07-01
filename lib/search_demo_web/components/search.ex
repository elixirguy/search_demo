defmodule SearchDemoWeb.Components.Search do
  use Phoenix.Component

  alias Phoenix.LiveView.JS

  def toggle_search(target) do
    %JS{}
    |> JS.push("toggle_search", target: target)
    |> JS.toggle(to: "#search-form")
  end

  def icon(assigns) do
    ~H"""
    <div phx-click={toggle_search(@target)} class="h-[34px] w-[34px] flex items-center justify-center hover:cursor-pointer border border-gray-400 rounded-l">
      <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
      </svg>
    </div>
    """
  end
end
