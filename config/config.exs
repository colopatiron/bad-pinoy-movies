# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bad_pinoy_movies,
  ecto_repos: [BadPinoyMovies.Repo]

# Configures the endpoint
config :bad_pinoy_movies, BadPinoyMoviesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jlNVuu9W3DiHqO0Is6icAhoxFONsuI+fAiqIj5ddF7lj/kQG4nzy0rwUKn/4OT7I",
  render_errors: [view: BadPinoyMoviesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BadPinoyMovies.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "WD3xF6mq"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
