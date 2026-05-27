import Config

config :bot_army_library_runtime, :pack_mode, true

config :bot_army_gtd, :start_repo, true
config :bot_army_llm, :start_repo, true
config :bot_army_dispatcher, :start_repo, true
config :bot_army_skills, :start_repo, true
config :bot_army_job_scheduler, :start_repo, true

import_config "#{config_env()}.exs"