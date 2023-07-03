get_place_names <- function(guide_url_file_path) {
  guide_page <- xml2::read_html(readLines(guide_url_file_path))

  place_names <- guide_page %>%
    rvest::html_elements('.mw-collection-place-name.mw-dir-label') %>%
    rvest::html_text()

  return(place_names)
}
