#' Convert xts to dataframe object
#'
#' Convert xts to dataframe object
#' @param x xts to be converted
#' @param date2RowName Do you want to covert the date to the rownames? 
#' @keywords dataframe xts
#' @export
#' @examples
#' xts2df()
xts2df <- function(x, date2RowName){
  if (exists("date2RowName", mode = "numeric") == FALSE) {
    date2RowName <- 1
  }
  
  if (date2RowName == 1){
    y = as.data.frame(x)
  }   
  
  if (date2RowName == 0){
    cnames <- colnames(x)
    y = data.frame(date = index(x), value = coredata(x))
    y$date <- as.Date(y$date , format = "%Y-%m-%d")
    colnames(y) = c("date", cnames)
  }
  
  return(y)
  
}