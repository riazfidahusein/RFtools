loadDefaultPackages <- function(){
  # loads a list of required packages for new R session

  packageList <- c("tidyverse",
                   "tidyquant",
                   "PerformanceAnalytics",
                   "data.table",
                   "RODBC",
                   "Quandl",
                   "rdrop2")

  lapply(packageList, library, character.only = TRUE)

  Quandl.api_key("PfeDPr8vFMpZvLVwXGhC")

}
