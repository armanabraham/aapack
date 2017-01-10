
#' ggplot theme for generating publication quality graphs
#'
#' It is clean, uses italics for axes text and font size
#' @export

theme_publish1 <- function(base_size=1, base_family='Gill Sans') {
  library(ggplot2)
  th <- theme_bw(base_size=base_size, base_family='Gill Sans')
  th <- th +   ggplot2::theme(plot.background = element_rect(fill = "transparent",colour = NA),
                              panel.background = element_rect(fill = "transparent",colour = NA),
                              panel.border = element_blank(),
                              strip.background=element_rect(colour="white", fill="white"),
                              #axis.line = element_line(colour = "grey80"),
                              axis.line = element_line(colour = "#a9a9a9", size = 0.3),
                              axis.ticks.x = element_line(colour = "#a9a9a9", size = 0.3),
                              axis.ticks.y = element_line(colour = "#a9a9a9", size = 0.3),
                              panel.grid.major = element_blank(),
                              panel.grid.minor = element_blank(),
                              axis.text = element_text(size=12, face="italic"),
                              #axis.title.y = element_text(hjust=-0.1),
                              axis.title = element_text(size=12, face="italic"),
                              axis.title.x = element_text(vjust=-0.1))
}

#' ggplot theme for generating publication quality graphs
#'
#' This is based on Justin's suggestion of ensuring that axes are
#' far apart. Please ensure that you have "Gill Sans MT" font installed
#' or it will throw an error
#' @examples
#' qplot(seq(1:10), runif(10)) + theme_publish2()
#' qplot(seq(1:10), runif(10)) +
#'      geom_smooth(method='lm', se=FALSE) +
#'      theme_publish2() +
#'      geom_rangeframe()
#' @export
theme_publish2 <- function (base_size = 12, base_family = "Gill Sans")
{
  library(ggplot2)
  th <- ggthemes::theme_tufte(base_family = base_family, base_size=base_size, ticks=TRUE)
  th <- th + ggplot2::theme(axis.text = element_text(size=12, face="italic"),
                            axis.title = element_text(size=12, face="italic"),
                            axis.ticks.x = element_line(colour = "grey30", size = 0.3),
                            axis.ticks.y = element_line(colour = "grey30", size = 0.3))
  #+ geom_rangeframe()
  #   theme_tufte(base_size = base_size, base_family = base_family) %+replace%
  #     theme(plot.background = element_rect(fill = "transparent",colour = NA),
  #           panel.background = element_rect(fill = "transparent",colour = NA),
  #           panel.border = element_blank(),
  #           strip.background=element_rect(colour="white", fill="white"),
  #           axis.line = element_line(colour = "grey80"),
  #           axis.line = element_line(colour = "#a9a9a9", size = 0.3),
  #           axis.ticks.x = element_line(colour = "#a9a9a9", size = 0.3),
  #           axis.ticks.y = element_line(colour = "#a9a9a9", size = 0.3),
  #           panel.grid.major = element_blank(),
  #           panel.grid.minor = element_blank(),
  #           axis.text = element_text(size=11, face="italic"),
  #           #axis.title.y = element_text(hjust=-0.1),
  #           axis.title = element_text(size=11, face="italic"),
  #           axis.title.x = element_text(vjust=-0.1))
}
