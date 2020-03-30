defmodule BadPinoyMovies.Repo do
  use Ecto.Repo,
    otp_app: :bad_pinoy_movies,
    adapter: Ecto.Adapters.Postgres
end
