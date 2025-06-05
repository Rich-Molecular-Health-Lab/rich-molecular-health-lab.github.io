course_card <- function(course_no, file_prefix, semester, course_description, day_time, semesters, credits) {
  tagList(
    card(
      card_header(
        layout_columns(
          widths = c(4, 4, 4),
          course_no,
          tags$a(
            href = paste0("https://rich-molecular-health-lab.github.io/rich-courses/syllabi/syllabus_", file_prefix, ".html"),
            paste0("Syllabus (", semester, ")")
          ),
          tags$a(
            href = paste0("https://rich-molecular-health-lab.github.io/rich-courses/schedules/schedule_", file_prefix, ".html"),
            paste0("Schedule (", semester, ")")
          )
        )
      ),
      card_image(file = paste0("graphics/", file_prefix, "_header.png"), width = "100%"),
      card_body(HTML(course_description)),
      card_footer(layout_columns(widths = c(4, 4, 4), day_time, paste(semesters, "Semesters"), paste(credits, "credits")))
    )
  )
}
