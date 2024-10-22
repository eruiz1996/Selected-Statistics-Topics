library(shiny)

# personalizar a antojo
nacionalidades <- c("México", "EUA", "Canadá", "Argelia")

ui <- fluidPage(
  titlePanel("Número de nacionalidades"),
  sidebarLayout(
    # Panel izquierdo
    #---------------------------------------------------------------------------
    sidebarPanel(
      # input 1: Nombre
      textInput(inputId = 'name', label = "Introduce tu nombre", value = "Edgar"),
      # input 2: Opciones de nacionalides
      selectInput('nacionalidades', 
                  "Selecciona las nacionalidades que tengas:", 
                  choices = nacionalidades,
                  multiple = T)
    ),
    #---------------------------------------------------------------------------
    
    # Panel principal
    #---------------------------------------------------------------------------
    mainPanel(
      h2("Informe"),
      textOutput('respuesta')
    )
    #---------------------------------------------------------------------------
  )
)

server <- function(input, output, sesion){
  # output de respuesta al número de nacionalidades
  output$respuesta <- renderText({
    paste(input$name, "tiene", length(input$nacionalidades), "nacionalidades.")
  })
}

shinyApp(ui, server)