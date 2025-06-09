#' @title Dodawanie podpisu do wykresu
#' @description
#' Dodawanie do wykresu lub zmienianie już istniejącego podpisu (*caption*)
#' zawierającego formułkę dot. źródła danych.
#'
#' `dodaj_rok_w_podpisie()` - do wykorzystania w ramach procesu tworzenia
#' wykresu *[ggplot2][ggplot2::ggplot]* przy pomocy operatora `+`,
#'
#' `zmien_rok_w_podpisie()` - do zmodyfikowania już utworzonego (szablonu)
#' wykresu *[ggplot2][ggplot2::ggplot]* (np. w ramach pipe'ów)
#' @param g wykres *[ggplot2][ggplot2::ggplot]*
#' @param rok wartość, która ma zostać podstawiona jako rok pozyskania danych
#' @returns `dodaj_rok_w_podpisie()` - listę klasy *labels*;
#' `zmien_rok_w_podpisie` - wykres *[ggplot2][ggplot2::ggplot]*
#' @examples
#' library(ggplot2)
#' p <- ggplot(daneTypySzkol,
#'             aes(pct, factor(rok_abs), fill = typ_szk,
#'                 label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE))
#' p # wykres bez dodanej formułki
#'
#' # dodawanie formułki:
#' p + dodaj_rok_w_podpisie(1234)
#' # ale
#' zmien_rok_w_podpisie(p, 1234)
#' # lub
#' p |> zmien_rok_w_podpisie(1234)
#' @importFrom ggplot2 labs
#' @export
dodaj_rok_w_podpisie <- function(rok) {
  labs(caption = paste("Źródło: Dane z monitoringu karier absolwentów szkół ponadpodstawowych pozyskane w",
                       rok, "r."))
}
#' @rdname dodaj_rok_w_podpisie
#' @export
zmien_rok_w_podpisie <- function(g, rok) {
  stopifnot(inherits(g, "gg"))
  if (!is.null(g$labels$caption)) {
    if (!grepl("Źródło: Dane z monitoringu karier absolwentów szkół ponadpodstawowych pozyskane w [[:digit:]]{4} r.",
               g$labels$caption)) {
      warning("Niespodziewana wcześniejsza wartość podpisu: '", g$labels$caption, '".')
    }
  }
  g$labels$caption <- paste("Źródło: Dane z monitoringu karier absolwentów szkół ponadpodstawowych pozyskane w",
                            rok, "r.")
  return(g)
}
