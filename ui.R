shinyUI(fluidPage(
  title="% GDP Healthcare Spending", 
  htmlOutput('myMap'),
  hr(),
  fluidRow(
    column(3,
           h4("Map"),           
           sliderInput('year', 'Year',format ="####",  min=2010, max=2012, value=2012, 
                       step=1),
           br()
    ),
    column(9, 
           htmlOutput('myTable')
    )
  )
))