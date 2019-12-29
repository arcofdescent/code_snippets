
val a = Array(2, 4, 1, 78, 45, 67, 23, 1)
println(a.mkString(","))

val b = for (idx <- 0 until a.length if idx % 2 == 0) {
  if (idx < a.length - 1) {
    val tmp = a(idx)
    a(idx) = a(idx+1)
    a(idx+1) = tmp
  }
}

println(a.mkString(","))

