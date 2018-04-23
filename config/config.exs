# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :papertrail_test,
  ecto_repos: [PapertrailTest.Repo]

# Configures the endpoint
config :papertrail_test, PapertrailTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hUIDR1EGetiW4HIwAB/RQ7XTmWzzQxnUWWnKOOw+40a6EncIz9BbELYXgA3WRLo9",
  render_errors: [view: PapertrailTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PapertrailTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
