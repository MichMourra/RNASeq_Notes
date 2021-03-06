library("sessioninfo")
options(width = 120)
sessioninfo::session_info()

print("Soy Mich")

dir.create(here::here("figuras"),showWarnings = FALSE)

pdf(here::here("figuras","mtcars_gear_vs_mpg.pdf"))
library("ggplot2")
ggplot(mtcars, aes(group = gear, y = mpg)) + geom_boxplot()
dev.off()

options(width = 120)
sessioninfo::session_info()
