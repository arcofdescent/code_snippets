
val prices = Map(
  "Phone"   -> 6000,
  "Nexus 7" -> 9000,
  "Kindle"  -> 9000,
  "BOSS ME-70" -> 20000,
  "BOSS DR-880"  -> 25000
)

val prices_discounted = for ((k,v) <- prices) yield k -> v * 0.8

println(prices)
println(prices_discounted)

