package tutorial.webapp

import scala.scalajs.js.JSApp
import org.scalajs.dom
import dom.document
import scala.scalajs.js.annotation.JSExport

object TutorialApp extends JSApp {
    def main(): Unit = {
        appendPar(document.body, "Hello World")
    }

    def appendPar(targetNode: dom.Node, text: String): Unit = {
        val paragraghNode = document.createElement("p")
        val textNode = document.createTextNode(text)
        paragraghNode.appendChild(textNode)
        targetNode.appendChild(paragraghNode)
    }

    @JSExport
    def addClickedMessage(): Unit = {
        appendPar(document.body, "Button clicked")
    }
}

