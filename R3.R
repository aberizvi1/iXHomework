library(tidyverse)

data = mpg

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

#1. I see a dot map of "hwy" -- highway miles per gallon or liter,
  #by "displ" -- size of engine.
#2. There are 234 rows.
#3. "drv" -- description for mechanism for car wheels driving.
  #i.e. "r" rear wheels; "4" 4 wheel; "f" front wheels
#4. 
ggplot(data = mpg) +
  geom_point(mapping=aes(x = hwy, y = cyl))
  
#5. What happens is
ggplot(data = mpg) + 
  geom_point(mapping=aes(x=class, y=drv))

#6. Coloring variables not included in axes
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#7. Sizing variables differently.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#8. Sizing variables differently based on variable on axes.
#TESTTESTTEST
ggplot(data = mpg) +
  geom_point(mapping=aes(x = hwy, y = cyl, size = cyl))

#9. Fading variables not included on axes.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#10. Reshaping variables not included on axes.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

#11. Coloring all points one color.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#12. Find the TYPO!
#Typo is that there needs to be a parentheses between hwy and color--
  #otherwise the points on this plot appear in red.
#ggplot(data = mpg) + 
#  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#13.Find the TYPO!
#Typo is that the "+" symbol is in the second row
  #contrary to it being at the end of the first row
  #at which point the code will not run, and an error code will be produced
#ggplot(data = mpg) 
#+ geom_point(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

#14.Displaying several plots "displ" by "hwy"
  #each plot displays different classes
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

#15. Displaying several plots "year" by "hwy" mileage,
  #sized by "cty" mileage
#TESTTESTTEST
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = year, y = hwy, size = cty)) + 
  facet_wrap(~ manufacturer, nrow = 3)

#16. Displaying several plots "displ" by "hwy"
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)

#17.
  #1. If you facet on a continuous variable, 
  #2. 
    ggplot(data = mpg) + 
      geom_point(mapping = aes(x = drv, y = cyl))
  #3.
  #4.
  #5.
      ?facet_wrap
      ?nrow
      ?ncol
      #"facet_grid()" does not have "nrow" and "ncol" arguments
        #because
  #6.
#18.

#19.

#20.

#21.

#22.

#23.

#24.

#25.

#26.

#27.

#28.

#29.

#30.

#31.
