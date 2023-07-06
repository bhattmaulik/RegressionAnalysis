library(grateful)
list_packages <- c("AER",
                   "easystats",
                   "fpp3",
                   "lmtest",
                   "ggthemes",
                   "gt",
                   "gtsummary",
                   "patchwork",
                   "here",
                   "fs",
                   "knitr",
                   "kableExtra")
cite_packages(pkgs = list_packages, cite.tidyverse = TRUE,dependencies = FALSE, out.dir = getwd(), citation.style = "APA", output = "paragraph")
