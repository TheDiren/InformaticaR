library(plotly)
df <- read.csv("beedata.csv")
df.4 <- df[df$hive==4,]
p <- plot_ly(df.4[1:100,], x = ~time, y = ~t_i_3)
# saving the plot as html
htmlwidgets::saveWidget(p, "testploty.html")
# if you want to have a static image, e.g. png, you can then open the html file, 
#and use the small button with the camera symbol to export as png. You could also
#use the library orca to directly export a static image using plotly directly from your code,
#but it seems to be a bit complicated to install orca.

# I haven't used powerpoint for a long time, but I think there should be a way 
# to embed a html file: 
# https://www.techwalla.com/articles/how-to-embed-an-excel-workbook-icon-into-powerpoint