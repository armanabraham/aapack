#' Helper function for ggplot similar to mean_cl_boot
#'
#' Original code from https://rpubs.com/dgolicher/median_boot
#' @examples
#' geom_errorbar(stat='summary', fun.y='median_cl_boot')
#' @export
median_cl_boot <- function(x, conf = 0.95) {
  lconf <- (1 - conf)/2
  uconf <- 1 - lconf
  require(boot)
  bmedian <- function(x, ind) median(x[ind])
  bt <- boot(x, bmedian, 1000)
  bb <- boot.ci(bt, type = "perc")
  data.frame(y = median(x), ymin = quantile(bt$t, lconf), ymax = quantile(bt$t, uconf))
}
