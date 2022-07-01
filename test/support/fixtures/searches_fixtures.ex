defmodule SearchDemo.SearchesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `SearchDemo.Searches` context.
  """

  @doc """
  Generate a search.
  """
  def search_fixture(attrs \\ %{}) do
    {:ok, search} =
      attrs
      |> Enum.into(%{
        term: "some term"
      })
      |> SearchDemo.Searches.create_search()

    search
  end
end
