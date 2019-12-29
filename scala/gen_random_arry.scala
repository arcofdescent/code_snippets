
import scala.util.Random
import scala.collection.mutable.ArrayBuffer

val n = 20
var a = new ArrayBuffer[Int]()

for (i <- 0 until n) {
  a += Random.nextInt(n)
}

println(a.toString)

