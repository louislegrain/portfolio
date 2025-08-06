#import "@preview/typsite:0.1.0": html-bindings._h as html
#import "http_codes.typ": *

#let template(head: none, content) = {
  show heading: it => std.html.elem("h" + str(it.level), it.body)
  show underline: html.span.with(class: "link")
  
  show: html.html.with(lang: "en")

  html.head({
    html.meta(charset: "utf-8", none)
    html.meta(name: "viewport", content: "width=device-width, initial-scale=1", none)
    html.title(context document.title)
    html.link(rel: "stylesheet", href: "/style.css", none)

    html.link(rel: "icon", type: "image/png", href: "/assets/icons/favicon-96x96.png", sizes: "96x96", none)
    html.link(rel: "icon", type: "image/svg+xml", href: "/assets/icons/favicon.svg", none)
    html.link(rel: "shortcut icon", href: "/favicon.ico", none)
    html.link(rel: "apple-touch-icon", href: "/assets/icons/apple-touch-icon.png", sizes: "180x180", none)

    context {
      if document.description != none {
        html.meta(name: "description", content: document.description.text, none)
      }
    }
    
    head
  })

  html.body(content)
}
