library(shiny)
ui <- fluidPage(
  tags$head(
    tags$script(
      '(function() {
window.__insp = window.__insp || [];
__insp.push(["wid", 1507814203]);
var ldinsp = function(){
if(typeof window.__inspld != "undefined") return; window.__inspld = 1; var insp = document.createElement("script"); insp.type = "text/javascript"; insp.async = true; insp.id = "inspsync"; insp.src = ("https:" == document.location.protocol ? "https" : "http") + "://cdn.inspectlet.com/inspectlet.js?wid=1507814203&r=" + Math.floor(new Date().getTime()/3600000); var x = document.getElementsByTagName("script")[0]; x.parentNode.insertBefore(insp, x); };
setTimeout(ldinsp, 0);
})();
      '
    )
  ),
  sliderInput(
    "obs", 
    "Number of observations:",
    min = 0,
    max = 1000, 
    value = 500
  ),
  plotOutput("distPlot")
)

# Server logic
server <- function(input, output) {
  output$distPlot <- renderPlot({
    hist(rnorm(input$obs))
  })
}

# Complete app with UI and server components
shinyApp(ui, server)