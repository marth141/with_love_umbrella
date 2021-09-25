defmodule WithLove.Repo do
  use Ecto.Repo,
    otp_app: :with_love,
    adapter: Ecto.Adapters.Postgres
end
