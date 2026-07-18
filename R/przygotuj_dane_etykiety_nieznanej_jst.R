#' @title Przygotowanie danych do kartogramow
#' @description
#' Funkcja przygotowuje dane do narysowania na kartogramie etykiety przy polu
#' opisującym nieznaną JST (zwykle: nieznaną lokalizację absolwenta).
#' @param dane obiekt klasy [sf::sf] zawierająca dane połączone z mapą, co do
#' zasady wynik wywołania funkcji [zlacz_z_mapa()]
#' @param etykieta ciąg znaków - etykieta opisująca nieznaną JST
#' @param przesuniecieX opcjonalnie przesunięcie etykiety w poziomie (wartości
#' dodatnie oznaczają przesunięcie w prawo); domyślnie 0
#' @param przesuniecieY opcjonalnie przesunięcie etykiety w pionie (wartości
#' dodatnie oznaczają przesunięcie w górę); domyślnie 10000
#' @details
#' Funkcja zakłada, że rozsądnym położeniem etykiety jest nieco w górę od lewego
#' górnego rogu obszaru, w którym mieści się wielokąt reprezentujący na
#' kartogramie nieznaną JST.
#' @returns obiekt klasy [sf::sf]
#' @examples
#' przygotuj_dane_etykiety_nieznanej_jst(zlacz_z_mapa(daneMigracjeWoj),
#'                                       "Nieznane\nwojewództwo")
#' @seealso [zlacz_z_mapa()], [wykresMigracjeWoj]
#' @export
przygotuj_dane_etykiety_nieznanej_jst <- function(dane, etykieta,
                                                  przesuniecieX = 0,
                                                  przesuniecieY = 10000) {
  stopifnot(inherits(dane, "sf"),
            "nazwa_woj" %in% names(dane),
            is.character(etykieta), length(etykieta) == 1L, !is.na(etykieta),
            is.numeric(przesuniecieX), length(przesuniecieX) == 1L,
            !anyNA(przesuniecieX),
            is.numeric(przesuniecieY), length(przesuniecieY) == 1L,
            !anyNA(przesuniecieY))

  dane <- dane[dane$nazwa_woj == "nieznane", ]
  dane$label <- rep(etykieta, nrow(dane))
  dane$geometry <-
    sf::st_sfc(
      sf::st_multipoint(
        t(sapply(dane$geometry,
                 function(y, przesuniecieY) {
                   return(sf::st_bbox(y)[c("xmin", "ymax")] +
                            c(przesuniecieX, przesuniecieY))
                 }, przesuniecieY = przesuniecieY))),
      crs = sf::st_crs(dane))
  return(dane)
}
