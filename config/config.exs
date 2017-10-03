# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :supervisor_phoenix,
  ecto_repos: [SupervisorPhoenix.Repo]

# Configures the endpoint
config :supervisor_phoenix, SupervisorPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VtKWoAUvAI83jz3GvBknJR38EqPuI2jtd3SXeltVaodp7YiKwaqZ0L1Ke6j5U4fn",
  render_errors: [view: SupervisorPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SupervisorPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
