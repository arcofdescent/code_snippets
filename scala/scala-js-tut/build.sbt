enablePlugins(ScalaJSPlugin)
name := "Scala.js Tutorial"
scalaVersion := "2.11.6"
scalaJSStage in Global := FastOptStage
libraryDependencies += "org.scala-js" %%% "scalajs-dom" % "0.8.0"
