shinyUI(fluidPage(
  title="Health Expenditure Per Capita (Current US$)", 
  h2("Health Expenditure Per Capita (Current US$)"),
  h6("Source:", {a("World Bank", href="http://data.worldbank.org/indicator/SH.XPD.PCAP/countries?display=default")}),
  htmlOutput('myMap'),
  h4("Legend:", "100", {img(src="legend.png")}, "4000"),
  hr(),
  fluidRow(
    column(2,
           h4("Map Year"),           
           sliderInput('year', 'Year',format ="####",  min=2010, max=2012, value=2012, 
                       step=1),
           br()
    ),
    column(10, 
           h4("Calculate Annual Growth Rate:"),
           uiOutput("cSelector"),
           tableOutput('myTable2'),
           h4(htmlOutput('text1'))
    )
  ),
  fluidRow(
    h4("Data Table (sortable)"),
    htmlOutput('myTable')
    )
))