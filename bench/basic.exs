# MIX_ENV=bench LIMIT=1 SCALE=5000 RANGE=10000 PARALLEL=500 mix run bench/basic.exs
profile? = !!System.get_env("PROFILE")
parallel = String.to_integer(System.get_env("PARALLEL", "1"))
limit = String.to_integer(System.get_env("LIMIT", "1000000"))
scale = String.to_integer(System.get_env("SCALE", "60000"))
range = String.to_integer(System.get_env("RANGE", "1_000"))

IO.puts("""
prallel: #{parallel}
limit: #{limit}
scale: #{scale}
range: #{range}
""")

# TODO: clean up ETS table before/after each scenario
PlugAttack.Storage.Ets.start_link(:plug_attack_sites, clean_period: :timer.minutes(10))

Benchee.run(
  %{
    "plug_attack" => fn key ->
      PlugAttack.Rule.throttle(_key = key,
        storage: {PlugAttack.Storage.Ets, :plug_attack_sites},
        limit: limit,
        period: scale
      )
    end,
    "hammer" => fn key -> Hammer.check_rate("sites:#{key}", scale, limit) end,
    "ex_rated" => fn key -> ExRated.check_rate("sites:#{key}", scale, limit) end,
    "rate_limiter" => fn key ->
      key = "sites:#{key}"
      rate_limiter = RateLimiter.get(key) || RateLimiter.new(key, scale, limit)
      RateLimiter.hit(rate_limiter)
    end
  },
  formatters: [{Benchee.Formatters.Console, extended_statistics: true}],
  before_each: fn _ -> :rand.uniform(range) end,
  time: 6,
  # fill the table with some data
  warmup: 14,
  profile_after: profile?,
  parallel: parallel
)
