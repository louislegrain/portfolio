#import "http_codes.typ": *

#let template(head: none, content) = {
  show heading: it => html.elem("h" + str(it.level), it.body)
  show underline: it => html.span(class: "link", it.body)
  
  show: html.html.with(lang: "en")

  html.head({
    html.meta(charset: "utf-8")
    html.meta(name: "viewport", content: "width=device-width, initial-scale=1")
    html.title(context document.title)
    html.link(rel: "stylesheet", href: "/style.css")

    html.link(rel: "icon", type: "image/png", href: "/assets/icons/favicon-96x96.png", sizes: ((96, 96),))
    html.link(rel: "icon", type: "image/svg+xml", href: "/assets/icons/favicon.svg")
    html.elem("link", attrs: (rel: "shortcut icon", href: "/favicon.ico"))
    html.elem("link", attrs: (rel: "apple-touch-icon", href: "/assets/icons/apple-touch-icon.png", sizes: "180x180"))

    context {
      if document.description != none {
        html.meta(name: "description", content: document.description.text)
      }
    }
    
    head
  })

  html.body(content)
}
