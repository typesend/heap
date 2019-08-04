# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :heap,
  ecto_repos: [Heap.Repo]

# Configures the endpoint
config :heap, HeapWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "chZe4GG67srWuB2J5DJnUFjuISf4ItDsKvzhTIwDjIuJvUfdz32V5Xk40VgZtE0R",
  render_errors: [view: HeapWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Heap.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
