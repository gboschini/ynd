use Mix.Config

config :ynd_phx_bootstrap, YndPhxBootstrapWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :ynd_phx_bootstrap, YndPhxBootstrap.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "ynd",
  hostname: "localhost",
  port: 5432,
  pool_size: 10
