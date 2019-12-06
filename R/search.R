#' Search for an athlete by name
#'
#' @param name A regular expression
#'
#' @return A data frame with information on all athletes whose names matches regular expression.
#' @export
#'
#' @examples
#' search_athlete("Mann$")
search_athlete <- function(name) {
  url <- make_url("search", list(name = name))

  response <- GET(url)

  if (http_error(response)) stop("Error in search/.")

  jsonlite::fromJSON(content(response, "text", encoding = "UTF-8"))
}
