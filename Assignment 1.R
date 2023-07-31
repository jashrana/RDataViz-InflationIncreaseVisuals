cpi_data <- read.csv("Counsumer_Price_Index.csv")

#Ref: https://www.geeksforgeeks.org/delete-rows-with-empty-cells-from-excel-using-r/
cpi_data <- cpi_data[!apply(is.na(cpi_data) | cpi_data == "", 1, all),]

str(cpi_data)
cpi_data

sub_req = c("Total","Food","Total_Minus_Food_Energy")
loc_req = c("IRL","GBR","USA","AUT","MEX","FRA","ESP","CAN","G-7")

library(dplyr)
plot_data <- cpi_data%>%
  filter(Time == "2022-12", 
         Subject %in% sub_req,
         Location %in% loc_req)%>%
  arrange(Location)
colnames(plot_data)[5] <- "Per_2022_12"
plot_data <- subset(plot_data, select = -c(Time, Frequency))
plot_data

# temp_data <- cpi_data%>%
#   filter(Time == "2021-12", 
#          Subject %in% sub_req,
#          Location %in% loc_req)%>%
#   arrange(Location)
# temp_data <- subset(temp_data, select = -c(Time, Frequency))
# temp_data
# 
# 
# plot_data <- merge(x = plot_data, y = temp_data, by = c("Location","Subject"), all.x = TRUE)
# colnames(plot_data)[4] <- "Per_2021_12"
# plot_data



dotplot <- dotplot +
  theme(panel.background = element_rect(fill = "white"),
        panel.grid.major.x = element_line(size = 0.1, linetype = "longdash",
                                        colour = 'grey'),
        panel.grid.major.y = element_line(size = 0.1, linetype = "solid",
                                          colour = 'grey'),
        panel.grid.minor.y = element_line(size = 0.06, linetype = "dashed",
                                          colour = 'lightgrey')
        )

dotplot

# ggplot(plot_data, beside = TRUE, aes(x = Location, y = Percentage, fill = Subject)) +
  # geom_bar(stat = 'identity', position = 'dodge2')


```{r}
library(ggplot2)



barplot <- ggplot(plot_data1, aes(x = Location, y = Per_2022_12)) +
  geom_col(position = "dodge",data = filter(plot_data1, plot_data1$Location %in% "IRL"), 
           aes(fill = "#1E88E5",)) +
  geom_col(position = "dodge",data = filter(plot_data1, !plot_data1$Location %in% "IRL"), 
           aes(fill = '#E66100'), alpha = 0.4)+
  scale_fill_manual(values = c("#1E88E5", '#E66100'), guide = "none")+
  labs(title="Consumer Price Index", subtitle="Change in December 2022 since December 2021") +
  xlab("Countries/ \nGroup of Nations") +
  ylab("Change in \nCPI (%)") +
  coord_flip(clip = "off")+
  scale_y_continuous(breaks = seq(0,20, by = 4), limits = c(0,18), expand = c(0,0)) +
  theme(panel.background = element_rect(fill = "white"),
        panel.grid.major.x = element_line(size = 0.12, linetype = "solid",
                                          colour = 'lightgrey'),
        axis.ticks = element_blank(),
        axis.text = element_text(size = 9),
        axis.title = element_text(size = 11),
        axis.title.y = element_text(size = 11, 
                                    angle = 0,
                                    vjust=0.5,
                                    hjust=0,
                                    margin = margin(r=4)),
        
        legend.title = element_text(face="italic", size=11),
        legend.text = element_text(size = 9),
        legend.box.background = element_rect(fill = 'lightgrey', colour = 'lightgrey'),
        legend.key = element_rect(fill = "white"),
        legend.position = "bottom",
        legend.direction = "horizontal",
        legend.justification = "center",
        legend.box.margin = margin(0.5, 0.5, 0.5, 0.5),
        
        plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(face = 'italic', size = 12),
        panel.spacing = unit(1, "lines")) +
  facet_wrap(~Subject)


barplot
```

