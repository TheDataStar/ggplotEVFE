
install.packages("ggplot2")

library(ggplot2) # Loading the library.
data(diamonds) # Read and preview data.
head(diamonds)

# Density plot - Visualizes the density of observations that fall under a certain range of values.
ggplot(diamonds) + geom_density(aes(x=carat), fill="purple") + xlab("Carat") + ylab("Density")

# Scatter plot (object) - storing data as a ggplot object for future modification, this allows reuse of code or adding layers.
# Plot is based off of diamond color.
a <- ggplot(diamonds, aes(x=carat, y=price)) # Saving as variable a, adding aesthetic to carat and price.
a + geom_point(aes(color=color)) + xlab("Carat") + ylab("Price") # adding layer geom_point with color aesthetic and x,y labels.

# Same plot based on clarity.
a <- ggplot(diamonds, aes(x=carat, y=price))
a + geom_point(aes(color=clarity)) + xlab("Carat") + ylab("Clarity")

# Segmentation of scatter plot for color, carat & price.
# Seperating segments allows for further insight into features and interpretations of the dataset.
a + geom_point(aes(color=color)) + facet_wrap(~color) + xlab("Carat") + ylab("Price")

# Segmentation of scatter plot based on clarity, carat & price.
a + geom_point(aes(color=clarity)) + facet_wrap(~color) + xlab("Carat") + ylab("Price")

# Further Segmentation adding more dimensions & variables.
# Using the dataset object adding aesthetic of color to color vector, adding facet_layer for cut realtion to clarity. X & Y labels.
a + geom_point(aes(color=color)) + facet_wrap(cut ~ clarity) + xlab("Carat") + ylab("Price")

# Separating out segmentations
# Instead of facet_wrap we use facet_grid this forms a matrix of panels defined by row and column faceting variables. I used cut and clarity.
a + geom_point(aes(color=color)) + facet_grid(cut ~ clarity) +xlab("Carat") +ylab("Price")


