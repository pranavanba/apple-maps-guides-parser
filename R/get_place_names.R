library(rvest)
library(xml2)

get_place_names <- function(guide_url_file_path) {
  guide_page <- read_html(readLines(guide_url_file_path))

  place_names <- guide_page %>%
    html_elements('.mw-collection-place-name.mw-dir-label') %>%
    html_text()

  return(place_names)
}
