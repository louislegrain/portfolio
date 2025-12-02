#import "lib/lib.typ": *

#let description = "I am a French student with a deep passion for computer science and entrepreneurship. I love building things and learning new technologies along the way."

#set document(title: "Louis Legrain", description: description)

#show: template.with(
  head: html.link(rel: "canonical", href: "https://louislegrain.online")
)
#include "components/header.typ"

#html.main[
  == Hi!
  #description

  You can take a look at my #link("/assets/resume_louis_legrain.pdf")[resume] or contact me at #underline[contact[at]louislegrain.online].

  #html.div(class: "social-icons")[
    #link("https://github.com/louislegrain", include "lib/icons/github.typ")
    #link("https://www.linkedin.com/in/louis-legrain/", include "lib/icons/linkedin.typ")
  ]
]
