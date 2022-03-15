#' Creates histogram, boxplot and numeric summary
#' @export
#' @param x numeric variable
ds <- function(x) {
  # make two charts
  # 1 row and 2 columns
  par(mfrow=c(1,2))
  # Histogram with 30 colors
  hist(x,col=rainbow(30))
  # boxplot
  boxplot(x,col='green')
  par(mfrow=c(1,1))
  # Numeric summary
  data.frame(min=min(x),
             median=median(x),
             mean=mean(x),
             max=max(x))
}
