use Mix.Config

config :ynd_phx_bootstrap, YndPhxBootstrapWeb.Endpoint,
  http: [port: 4001],
  server: false

config :logger, level: :warn

config :ynd_phx_bootstrap, YndPhxBootstrap.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "ynd",
  hostname: "localhost",
  port: 5432,
  pool: Ecto.Adapters.SQL.Sandbox

config :junit_formatter,
  report_file: "report_file_test.xml",
  report_dir: "build/report/junit",
  print_report_file: true
