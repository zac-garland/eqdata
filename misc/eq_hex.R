
library(hexSticker)
library(ggplot2)
library(quantmod)
data("economics", package = "ggplot2")

# Compute % Returns
economics$returns_perc <- c(0, diff(economics$psavert)/economics$psavert[-length(economics$psavert)])

# Create break points and labels for axis ticks
brks <- economics$date[seq(1, length(economics$date), 12)]
lbls <- lubridate::year(economics$date[seq(1, length(economics$date), 12)])



p <- ggplot(economics[1:100, ], aes(date, returns_perc)) + 
  geom_area() + 
  scale_x_date(breaks=brks, labels=lbls) + 
  theme(axis.text.x = element_text(angle=90)) + 
  theme_void()+
  theme_transparent()

sticker(p,package="eqdata",filename="inst/figures/eq_hex.svg",s_width = 1.3,s_height = 1,s_x = 1,h_fill = "#69b3a2",
        h_color = "#000000")

