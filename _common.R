set.seed(1014)

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 2,
  fig.width = 6,
  fig.asp = 2/3,
  fig.show = "hold"
)

options(
  dplyr.print_min = 6,
  dplyr.print_max = 6,
  pillar.max_footer_lines = 2,
  pillar.min_chars = 15,
  stringr.view_n = 6,
  # Temporarily deactivate cli output for quarto
  cli.num_colors = 0,
  cli.hyperlink = FALSE,
  pillar.bold = TRUE,
  width = 77 # 80 - 3 for #> comment
)

#ggplot2::theme_set(ggplot2::theme_gray(12))
mydata <- data.frame(Label = c("drafting","restructuring","polishing","complete"), Meaning = c("This chapter is currently a dumping ground for ideas, and we don't recommend reading it.","This chapter is undergoing heavy restructuring and may be confusing or incomplete.", "This chapter should be readable but is currently undergoing final polishing.", "This chapter is largely complete and just needs final proof reading."))

display_chapter_status <- function(user_input) {
  
  # Check if the user input is in the mydata dataset
  if (tolower(user_input) %in% mydata$Label) {
    # Get the corresponding message from the mydata dataset
    message_row <- data.frame(Status = mydata[mydata$Label == tolower(user_input),2])
    
    # Display the message using knitr::kable
    knitr::kable(message_row, align = "c")
  } else {
    print("Not a valid input")
  }
}
