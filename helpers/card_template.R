library(tidyverse)
library(bslib)
library(htmltools)

list_education <- function(phd       = NULL,
                           masters   = NULL,
                           undergrad = NULL) {
  if (is.null(phd) & is.null(masters)) {
    education <- tags$dl(
      tags$dd(undergrad)
    )
  } else if (is.null(phd) & !is.null(masters)) {
    education <- tags$dl(
      tags$dd(masters),
      tags$dd(undergrad)
    )
  } else if (!is.null(phd) & !is.null(masters)) {
    education <- tags$dl(
      tags$dd(phd),
      tags$dd(masters),
      tags$dd(undergrad)
    )
  }
  return(education)
}

card_template <- function(name_role,
                          photo,
                          education,
                          pronouns,
                          callme,
                          research,
                          projects,
                          personal) {
  projects_list <- map(projects, \(x) withTags(li(x)))
  card_out <- card(
    card_header(tags$h3(name_role)),
    card_body(
      tags$div(layout_columns(col_widths = c(2, 10),
                              card_image(file = paste0("images/", photo), border_radius = "all", width = "100%"),
                              tags$div(education,
                                       tags$div(tags$span(
                                         tags$small(tags$b("Pronouns: "), tags$i(pronouns), tags$br(),
                                                    tags$b("Please Call Me: "), tags$i(callme))))))),
      tags$hr(),
      tags$dl(tags$dt("Research Interests"), tags$dd(research),
              tags$dt("Current Project(s)"), tags$dd(tags$ul(projects)))
    ),
    card_footer(tags$dl(tags$dt("Personal Interests"), tags$dd(personal)))
  )
  return(card_out)
}