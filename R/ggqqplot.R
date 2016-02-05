#' Plot Quantile-quantile plot and add abline like in qqplot
#'
#' Similar to qqplot but implemented using ggplot
#' Adopted from: http://is.gd/o5iOPm
#' @export
ggqqplot <- function (vec,          # vector of numbers
                      pointSize=5,  # size of plotted points
                      alpha=0.5)      # alpha level for showing dots
{
  require(ggplot2)
  require(ggthemes)
  # following four lines from base R's qqline()
  y <- quantile(vec[!is.na(vec)], c(0.25, 0.75))
  x <- qnorm(c(0.25, 0.75))
  slope <- diff(y)/diff(x)
  int <- y[1L] - slope * x[1L]
  #browser()
  d <- data.frame(dat = vec)
  ggplot(d, aes(sample = dat)) +
    theme_few() +
    theme(panel.grid=element_blank(), panel.border=element_blank()) +
    theme(axis.line = element_line(colour="grey", size=0.4)) +
    #theme(axis.title.x = element_text(vjust=-0.4)) +
    #theme(axis.text=element_text(size=12, face="bold")) +
    stat_qq(alpha=alpha, size=pointSize) +
    geom_abline(slope = slope, intercept = int, linetype="dashed") +
    xlab("Theoretical quantiles") +
    ylab("Sample quantiles")
}
