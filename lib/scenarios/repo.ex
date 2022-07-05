defmodule Scenarios.Repo do
  use Ecto.Repo,
    otp_app: :scenarios,
    adapter: Ecto.Adapters.Postgres
end
