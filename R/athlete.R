#' Data for specific athlete
#'
#' @param id ID for athlete
#'
#' @return A list with the following fields: \code{name}, \code{gender} and \code{results}.
#' @export
#'
#' @examples
#' athlete("7abaea70-337a-4c7a-9d13-31306dca26a8")
#' athlete("7ef6fbc8-4169-4a98-934e-ff5fa79ba103")
athlete <- function(id) {
  url <- make_url(paste("athlete", id, "", sep = "/"))

  response <- GET(url)

  if (http_error(response)) stop("Error in athlete/.")

  response <- content(response)
  #
  response$results <- response$license %>% map_dfr(function(license) {
    license$result %>%
      map_dfr(as_tibble)} %>%
      mutate(
        club = license$club,
        license = license$number,
        date = as.Date(date)
      )
  ) %>%
    arrange(desc(date))

  response$url <- NULL
  response$license <- NULL

  response
}
