defmodule SearchDemo.Searches do
  @moduledoc """
  The Searches context.
  """

  import Ecto.Query, warn: false

  alias SearchDemo.Searches.Search

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking search changes.

  ## Examples

      iex> change_search(search)
      %Ecto.Changeset{data: %Search{}}

  """
  def change_search(%Search{} = search, attrs \\ %{}) do
    Search.changeset(search, attrs)
  end
end
