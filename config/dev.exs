import Config

config :bot_army_library_runtime, :nats_servers, ["nats://localhost:4223"]

config :bot_army_gtd, BotArmyGtd.Repo,
  database: "bot_army_gtd_dev",
  hostname: "localhost",
  port: 35432,
  username: "postgres",
  password: "postgres"

config :bot_army_llm, BotArmyLlm.Repo,
  database: "bot_army_llm_dev",
  hostname: "localhost",
  port: 35432,
  username: "postgres",
  password: "postgres"

config :bot_army_dispatcher, BotArmyDispatcher.Repo,
  database: "bot_army_dispatcher_dev",
  hostname: "localhost",
  port: 35432,
  username: "postgres",
  password: "postgres"

config :bot_army_skills, BotArmySkills.Repo,
  database: "bot_army_skills_dev",
  hostname: "localhost",
  port: 35432,
  username: "postgres",
  password: "postgres"

config :bot_army_job_scheduler, BotArmyJobScheduler.Repo,
  database: "bot_army_job_scheduler_dev",
  hostname: "localhost",
  port: 35432,
  username: "postgres",
  password: "postgres"
