#import "@preview/typsite:0.1.0": html-bindings._h as html
#import "lib/lib.typ": *

#set document(title: "Louis Legrain")

#show: template
#include "components/header.typ"

#html.main[
  == Hi!
  I am a French student with a deep passion for computer science and entrepreneurship. I love building things and learning new technologies along the way.

  You can take a look at my #link("/assets/resume_louis_legrain.pdf")[resume] or contact me at #underline[contact[at]louislegrain.online].

  #html.div(class: "social-icons")[
    #link("https://github.com/louislegrain", include "lib/icons/github.typ")
    #link("https://www.linkedin.com/in/louis-legrain/", include "lib/icons/linkedin.typ")
  ]
]
