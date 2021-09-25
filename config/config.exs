# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

# Configure Mix tasks and generators
config :with_love,
  ecto_repos: [WithLove.Repo]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :with_love, WithLove.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

config :with_love_web,
  ecto_repos: [WithLove.Repo],
  generators: [context_app: :with_love]

# Configures the endpoint
config :with_love_web, WithLoveWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "d4NkNTCjE/HdgtaS0nRAOE9As2EHpAtScdfYc7+EH548GeQxJkcK0Zxan8dU0Ox4",
  render_errors: [view: WithLoveWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WithLove.PubSub,
  live_view: [signing_salt: "S4Vxs6id"]

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.12.18",
  default: [
    args: ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets),
    cd: Path.expand("../apps/with_love_web/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
