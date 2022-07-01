defmodule SearchDemo.Repo do
  use Ecto.Repo,
    otp_app: :search_demo,
    adapter: Ecto.Adapters.Postgres
end
