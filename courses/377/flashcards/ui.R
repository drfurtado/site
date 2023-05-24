fluidPage(
  titlePanel("Flashcards App"),
  
  sidebarLayout(
    sidebarPanel(
      actionButton("previous_card", "Previous Card"),
      actionButton("next_card", "Next Card"),
      actionButton("show_answer", "Show Answer")
    ),
    
    mainPanel(
      h2(textOutput("Question")),
      h4(textOutput("Answer"))  # Changed to h4 for the Answer
    )
  )
)
