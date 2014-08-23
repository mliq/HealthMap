shinyUI(fluidPage(
  title="Health Expenditure Per Capita (Current US$)", 
  h2("Health Expenditure Per Capita (Current US$)"),
  h6("Source:", {a("World Bank", href="http://data.worldbank.org/indicator/SH.XPD.PCAP/countries?display=default")}),
  htmlOutput('myMap'),
  h4("Legend: ", "  100", {img(src="legend.png")}, "4000"),
  hr(),
  fluidRow(
    column(3,
           h4("Map Year"),           
           sliderInput('year', 'Year',format ="####",  min=2010, max=2012, value=2012, 
                       step=1),
           br()
    ),
    column(9, 
           htmlOutput('myTable')
    )
  )
))