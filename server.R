library(googleVis)
library(shiny)

shinyServer(function(input, output) {
  data1 <- read.csv("sh.xpd.pcap_Indicator_en_csv_v2.1.csv")
	data2<-data1[,-2:-54]
	data2<-data2[,-5]
	data3<-na.omit(data2)
	data3$Country.Name<-as.character(data3$Country.Name)
	colnames(data3)<-c("Countries","2010","2011","2012")
	data3[170,1]<-"Russia"
	data3[213,1]<-"Venezuela"
	data3[220,1]<-"CD"
	data3[91,1]<-"Iran"
	data3[38,1]<-"Congo"
	data3[183,1]<-"SS"
	data3[58,1]<-"Egypt"
	data3[188,1]<-"Slovakia"
	data3[101,1]<-"Kyrgyzstan"
  #observe({
  #  updateSelectInput(session, "countries", choices = "data3$Countries")
  #})
    #countries<-data3$Countries,
    output$myMap <- renderGvis({
    gvisGeoChart(data3, locationvar="Countries", colorvar=input$year,
                 options=list(legend='false', 
                              colorAxis="{values:[100,500,1000,4000],
                                   colors:['#FF0000', '#FFC0CB', '#FFA500','#008000']}",height=400,width=600,keepAspectRatio='false'))
  })
  output$myTable <- renderGvis({
    gvisTable(data3,options=list(width=450))
  })
})