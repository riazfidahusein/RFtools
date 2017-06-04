#' Convert dataframe to xts object
#'
#' Convert dataframe to xts object
#' @param x Dataframe to be converted
#' @keywords dataframe xts
#' @export
#' @examples
#' df2xts()
df2xts <- function(x){
  out <- xts(x[,-1], order.by=x[,1])
  
  return(out)
}