#' @import httr
#' @import dplyr
#' @import purrr
NULL

BASE_URL = "https://www.racently.com/"

make_url <- function(endpoint, query = NULL) {
  modify_url(BASE_URL, path = paste("api", endpoint, sep = "/"), query = query)
}

