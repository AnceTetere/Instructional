library(tidyverse)

p <- ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = class))
p

#JPEG with sensible sizes
ggsave("p.jpeg", p, width = 8, height = 7, units = "cm", 
       path = "../R_projects")

#Adjusted resolution
ggsave("p_LR.jpeg", p, width = 8, height = 7, units = "cm", dpi = 50,
       path = "../R_projects")

#When figure sizing is not defined, we risk to get akward console size image of the graph
ggsave("p_undefined.jpeg", p, path = "../R_projects")

#JPEG with sensible sizes
ggsave("p.jpeg", p, width = 8, height = 7, units = "cm", 
       path = "../R_projects")

#JPEG with small size
ggsave("p_small.jpeg", p, width = 5, height = 4, units = "cm",
       path = "../R_projects")

#Adding the theme
p <- ggplot(mpg) +
  geom_point(aes(x = displ, y =hwy, colour = class)) +
  ggtitle("Example Graph") +
  theme()
  
p <- p +
  theme(text = element_text(size = 5, colour = "red"))

p <- p +
  theme(text = element_text(size = 5, colour = "red")) +
  theme(axis.text = element_text(size = 9, colour = "blue"))

p <- p +
  theme(text = element_text(size = 5, colour = "red")) +
  theme(axis.text.x = element_text(size = 20, colour = "green")) +
  theme(axis.text.y = element_text(size = 9, colour = "blue"))
  
ggsave("p.jpeg", p, width = 5, height = 4, units = "cm",
       path = "../R_projects")

#Formatting legend
p <- ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = class)) +
  ggtitle("Example Graph") +
  theme(text = element_text(size = 5))

p <- p + 
  theme(legend.key.size = unit(0.25, "cm"))

p <- p + 
  theme(legend.key.size = unit(0.25, "cm")) +
  theme(legend.position = "bottom")

p <- p + 
  theme(legend.key.size = unit(0.25, "cm")) +
  theme(legend.position = "none")

ggsave("p.jpeg", p, width = 5, height = 4, units = "cm",
       #path = "../R_projects")

#Pre-set themes
p <- ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = class)) +
  theme_gray() #Default

p + theme_bw()
p + theme_dark()
p + theme_classic()

p + theme_classic() +
  theme(text = element_text(size = 5)) +
  theme(legend.key.size = unit(0.25, "cm"))

#Colour palettes
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = class)) +
  scale_colour_brewer(palette = "Y10rRd")

ggplot(mpg) +
  geom_bar(aes(x = displ, fill = class)) +
  scale_fill_brewer(palette = "Y10rRd")

#An example using iris dataset
p <- ggplot(iris) +
  geom_point(aes(x = Sepal.Width, y = Petal.Width, colour = Species)) +
  theme_classic() +
  theme(axis.text = element_text(colour = "bisque4")) +
  theme(axis.title = element_text(colour = "bisque4")) +
  theme(legend.text = element_text(colour = "black")) +
  theme(legend.key.size = unit(0.25, "cm")) +
  theme(panel.border = element_rect(fill = NA, colour = "black", linewidth = 1)) +
  theme(legend.background = element_rect(fill = NA, colour = "black", linetype = "dashed")) +
  scale_colour_brewer(palette = "Dark2")

ggsave("p.jpeg", p, width = 8, height = 6, units = "cm", limitsize = FALSE,
             #path = "../R_projects")

#Additional features with ggpubr
library(ggpubr)

ggscatter(mpg, x = "displ", y = "hwy", color = "class", 
          palette = "Dark2", size = 3, alpha = 0.6)

ggboxplot(mpg, x = "class", y = "hwy", fill = "class", palette = "Dark2") + border()

ggdensity(mpg, "hwy", fill = "class", palette = "Dark2") + rotate()

ggdensity(mpg, "hwy", fill ="class", palette = "Dark2") + clean_theme()

#Using ggarrange
p1 <- ggscatter(mpg, x = "displ", y = "hwy", colour = "class", palette = "Dark2",
                size = 3, alpha = 0.6)

p2 <- ggdensity(mpg, "displ", fill = "class", palette = "Dark2") + clean_theme()

p3 <- ggdensity(mpg, "displ", fill = "class", palette = "Dark2") + 
  rotate() + clean_theme()

p_all <- ggarrange(p2, NULL, p1, p3, ncol = 2, nrow = 2, align = 'hv', widths = c(2,1),
                   heights = c(1,2), common.legend = TRUE)
