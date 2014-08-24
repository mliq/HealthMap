shinyUI(fluidPage(
  title="Health Expenditure Per Capita (Current US$)", 
  h2("Health Expenditure Per Capita (Current US$)"),
  h6("Source:", {a("World Bank", href="http://data.worldbank.org/indicator/SH.XPD.PCAP/countries?display=default")}),
  #htmlOutput('myMap'),
  #h4("Legend:", "100", {img(src="legend.png")}, "4000"),
  hr(),
  htmlOutput('myMap'),
  fluidRow(
    column(3,
           sliderInput('year', 'Map Year',format ="####",  min=2010, max=2012, value=2012, 
                       step=1)
    ),
    column(4,
           h5("Legend:", "100", {img(src="legend.png")}, "4000")
           )
  ),
  fluidRow(
    column(4, 
           h4("Calculate Growth Rates"),
           uiOutput("cSelector"),
           tableOutput('myTable2'),
           h4(htmlOutput('text1'))
    ),
    column(4,
           h4("Data Table (sortable)"),
           htmlOutput('myTable')
    )
  )
))