#import "lib/lib.typ": *

#set document(
  title: http_codes.at(
    sys.inputs.code,
    default: "Error " + sys.inputs.code
  )
)

#show: template.with(
  head: html.style("main { text-align: center } h2 { font-size: 6rem }")
)
#include "components/header.typ"

#html.main[
  == #sys.inputs.code

  Click #link("/")[here] to return home
]
