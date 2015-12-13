# Split numbers into digits
# Source: http://is.gd/dzN1Az
# Example: digits(119)
digits <- function(x) {
	if(length(x) > 1 ) {
		lapply(x, digits)
	} else {
		n <- nchar(x)
		rev( x %/% 10^seq(0, length.out=n) %% 10 )
	}
}

