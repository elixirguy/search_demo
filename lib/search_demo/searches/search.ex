defmodule SearchDemo.Searches.Search do
  defstruct [:term]
  @types %{term: :string}

  alias SearchDemo.Searches.Search
  import Ecto.Changeset

  @doc false
  def changeset(%Search{} = search, attrs) do
    {search, @types}
    |> cast(attrs, Map.keys(@types))
  end
end
