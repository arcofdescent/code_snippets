
from pyjamas.ui.RootPanel import RootPanel
from pyjamas.ui.Button import Button
from pyjamas.ui.HTML import HTML
from pyjamas.ui.TextBox import TextBox
from pyjamas.ui.HorizontalPanel import HorizontalPanel
from pyjamas import Window

def greet(sender):
    RootPanel().add(HTML("aaaa"))

if __name__ == '__main__':
    b = Button("Click me", greet)
    hw = HTML("Hello World!")

    p = HorizontalPanel()
    p.add(b)
    p.add(hw)

    RootPanel().add(p)
