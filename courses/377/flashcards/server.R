function(input, output, session) {
  data <- reactive({
    flashcards_data <- read.csv("flashcards.csv")
    flashcards_data
  })
  
  current_card <- reactiveVal(1)
  show_answer <- reactiveVal(FALSE)
  
  output$Question <- renderText({
    data()[current_card(), "Question"]
  })
  
  output$Answer <- renderText({
    if (show_answer()) {
      data()[current_card(), "Answer"]
    } else {
      ""
    }
  })
  
  observeEvent(input$next_card, {
    current_card((current_card() %% nrow(data())) + 1)
    show_answer(FALSE)
  })
  
  observeEvent(input$previous_card, {
    current_card((current_card() - 2) %% nrow(data()) + 1)
    show_answer(FALSE)
  })
  
  observeEvent(input$show_answer, {
    show_answer(TRUE)
  })
}
