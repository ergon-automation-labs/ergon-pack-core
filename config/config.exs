import Config

# Logger with correlation_id support
config :logger,
  level: :info,
  backends: [:console]

config :logger, :console,
  format: {BotArmyRuntime.LoggerFormatter, []},
  metadata: [:correlation_id]


config :bot_army_library_runtime, :pack_mode, true

config :bot_army_gtd, :start_repo, true
config :bot_army_llm, :start_repo, true
config :bot_army_dispatcher, :start_repo, true
config :bot_army_skills, :start_repo, true
config :bot_army_job_scheduler, :start_repo, true

import_config "#{config_env()}.exs"
