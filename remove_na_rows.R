#' Remove rows with NA values
#'
#' This function removes all rows in a data frame that contain any NA values.
#'
#' @param df A data.frame or tibble.
#'
#' @return A data.frame or tibble without rows that contain NA values.
#' @export
#'
#' @examples
#' df <- data.frame(a = c(1, NA, 3), b = c("x", "y", NA))
#' remove_na_rows(df)
remove_na_rows <- function(df) {
  df[complete.cases(df), ]
}