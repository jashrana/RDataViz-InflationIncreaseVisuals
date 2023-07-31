# Data Visualisation with R - Inflation Increase comparison analytics
 Vissualisation with R to gain insights on the increase in inflation in Ireland in comparison to 8 other countries (and one of the group of nations).

# University of Galway
## CT5100 - Data Visualisation

---

## 1. The Problem Statement
The Consumer Price Index or CPI measures the overall change in the prices of goods and services that people typically buy over time. It does this by collecting approximately 53,000 prices every month and comparing these to the corresponding prices from the previous month. As everyone has differing tastes and spending habits, the CPI measures prices for a huge assortment of items. Not only does the CPI measure price changes for goods but also for services e.g. hairdressing, taxi fares, insurance etc. This collection of items is normally referred to as the basket of goods and services. The basket does not apply to any particular person or family but represents an average household.

Inflation measured by consumer price index (CPI) is defined as the change in the prices of a basket of goods and services that are typically purchased by specific groups of households. Inflation is measured in terms of the annual growth rate with a breakdown for food, energy and total excluding food and energy. Inflation measures the erosion of living standards. The dataset you will look at in Assignment 1 has a record of the consumer price indices for multiple countries over many years, months and quarters. The data also included the average consumer price indices for the group of nations in the EU, the G7, the G20 and the OECD nations.

You are part of a team writing a business article on the increase in inflation in your country and you have been tasked with producing a visualisation showing the  consumer price indices in your country in comparison to 8 other countries (and one of the group of nations). You should choose the most recent consumer price index for each country. In most cases, that will be the month of December 2022 (The consumer price index values given for December 2022 refer to the increase or decrease in the price for a basket of goods since December 2021)

There are 4 values in the dataset associated with consumer price index for any date:
* Total (which includes Energy and Food) : the total increase/decrease in CPI in the
previous 12 months.
* Energy : the increase/decrease in energy product costs in the previous 12 months.
* Food: the increase/decrease in food product costs in the previous 12 month.
* Total, excluding Food and Energy : the total increase/decease in CPI in the previous 12 months, when food and energy are not included.

Based on that, create a visualisation in R:
1. Implement the dot plot approach using the ggplot2 library.
2. Implement the bar plot using the ggplot2 library.
3. Discuss your approach and whether the dot or bar approach is more effective in communicating the information required to support your article. (half page required).

## 2. Inference
A dot plot compares various measures over a single line in the X-axis, while a bar plot provides different bars over
X-axis for each measure. Technically, in this case, dot plot looks less cluttered as the data points are not closer to each other,
but if a cluttered data comes along the way, it would be better to approach them with the bar plot. The current charts only show
the countries if factored in the way shown in the X-axis, but an even better approach would be to take Subject in the X-axis and
then reorder them in the descending order of percentages for each country. In both cases, my bias goes towards the bar chart
out of both, as it is easy to read a visual when more colour is used to show something; and more the colour on the page, the
more amount of CPI is interpreted by the brain. For e.g., GBR is highest in ‘Food’ measure and is easily perceived in Bar chart,
but we need to find the dot in the Dot Plot to interpret the same information; same goes for AUT being the highest when it
comes to ‘Total’ measure. Bar plot also tends to require less information and theme designs required to gather information, as
we see that it was essential to plot the major x axis line in the dot plot to track the dots for each country, while the same isn’t
required in the bar chart. 

It is possible to capture small details and changes if we truncate a dot plot to a certain limit on Y-axis,
but the same is not possible in bar charts as it gives a wrong message, so it becomes a little nuisance to understand the small
differences between multiple bars, but as we need to compare our country with others, it gives us an edge to normally understand
and differentiate between countries to find out where our chosen country lies between them. From what I see, it becomes clear
that there is a moderance increase in the CPI for IRL in December 2022 since the last year, with Total coming near to 8.5%
while the Food almost reaching 12% and Total without Food and Energy around 4.8 to 5%. This information was easy to
understand and interpret in both the plots, but coming down to the crux of the matter, it becomes easy when comparing it to
either GBR or USA or the whole X-axis.


## 3. Conclusion: 
Thus, a bar chart is the preferred method of visualization in this case over the dot plot due to its efficient
comparability and easy data readability even for a non-technical human being.
