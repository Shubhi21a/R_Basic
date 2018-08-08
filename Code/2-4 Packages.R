# CRAN: Comprehensive R Archive Network

# install.packages("ggplot2") - this is how we install via console - " " required
# otherwise, go to packages tab on bottom right quadrant
# click install, type name of package

# the ones with blue check (in checkbox) are currently activated/in use (sorta)
# can check/uncheck as per need
# if a package is not activated:
# Typing ?functionName() from packkage, gives an error

# to activate package:
library(ggplot2) # here " "  is not necessary
# library just a function we use to activate package
# Library does not equal a package

# just a teaser
qplot(data=diamonds,carat,price,colour=clarity,facets=.~clarity)
# click on viewer tab to see the viz
# .~clarity means thaat we want each type of clarity to be plotted
# and it should be plotted side by side