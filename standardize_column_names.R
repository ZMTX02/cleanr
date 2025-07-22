#' Standardize column names
#'
#' This function transforms column names to lower case, replaces spaces with underscores,
#' and removes non-alphanumeric characters.
#'
#' @param df A data.frame or tibble.
#'
#' @return A data.frame or tibble with standardized column names.
#' @export
#'
#' @examples
#' df <- data.frame("First Name" = c("Alice", "Bob"), "Age (Years)" = c(25, 30))
#' standardize_column_names(df)
standardize_column_names <- function(df) {
  names(df) <- tolower(names(df))
  names(df) <- gsub(" ", "_", names(df))
  names(df) <- gsub("[^a-z0-9_]", "", names(df))
  df
}