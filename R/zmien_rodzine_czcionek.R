#' @title Modyfikowanie elementow wykresu
#' @description
#' Zmienia rodzinę czcionek używanych do wyświetlania *geometrii* tekstowych
#' na wykresie *[ggplot2][ggplot2::ggplot]*.
#'
#' **Wielkość** *geometrii* tekstowych zostanie zmieniona **tylko wtedy**, jeśli
#' **nie** jest *mapowana* z danych (w wywołaniu [ggplot2::aes()] dla całego
#' wykresu lub danej *geometrii*), tzn. jest stała dla wszystkich jednostek
#' prezentowanych daną *geometrią*.
#' @param g wykres *[ggplot2][ggplot2::ggplot]*
#' @param family ciąg znaków - nazwa rodziny czcionek, która
#' zostanie nadana wszystkim *geometriom* tekstowym; można też przekazać brak
#' danych (`NA_character`), aby nakazać skopiowanie rodziny czcionek z ustawień
#' *tematu* danego wykresu (dokładnie, z elementu `text`)
#' @details
#' Jeśli dany wykres nie ma jeszcze przypisanego żadnego *tematu*, a jako
#' argument `family` podano brak danych, zostanie użyta rodzina czcionek
#' *tematu* zwróconego przez [ggplot2::theme_get()] (choć skądinąd może to być
#' pusty ciąg znaków).
#'
#' Wykresy utworzone przy pomocy pakietu *ggplot2* począwszy od wersji 4.0.0
#' mogą mieć też zmienianą rodzinę czcionek w *geometriach* przy pomocy funkcji
#' [theme_losy()] (lub [ggplot2::theme_minimal()] itp.), korzystając
#' z wprowadzonego w tej wersji mechanizmu zapisywania w *temacie* wykresu
#' domyślnych wartości *estetyk* geometrii - użycie [theme_losy()] (itp.)
#' z podanym argumentem `base_family` zmodyfikuje bowiem taką domyślną wartość
#' *estetyki*, która będzie używana przez wszystkie *geometrie* danego wykresu,
#' w których wartość *estetyki* `family` nie została podana explicite (przez
#' ustalenie w zadanej wartości lub przypisanie mapowania).
#' @returns wykres *[ggplot2][ggplot2::ggplot]*
#' @seealso [zmien_wielkosc_czcionek()], [zmien_wielkosc_etykiet()],
#' [zmien_prog_pokazywania_etykiet()] [theme_losy()]
#' @examples
#' library(ggplot2)
#' p <- ggplot(daneTypySzkol,
#'             aes(pct, factor(rok_abs), fill = typ_szk,
#'                 label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 8, colour = "black")
#'
#' p
#' zmien_rodzine_czcionek(p, "serif")
#' # lub w pipie:
#' p |> zmien_rodzine_czcionek("serif")
#'
#' # jeśli rodzina czcionek geometri jest mapowana z danych, nie zostanie zmieniona:
#' ps <- ggplot(cbind(daneTypySzkol, czcionka = "sans"),
#'              aes(pct, factor(rok_abs), fill = typ_szk,
#'              label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(family = czcionka),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 8, colour = "black")
#' ps
#' zmien_rodzine_czcionek(ps, "serif")
#' @importFrom extrafont fonts
#' @importFrom ggplot2 ggproto theme_get
#' @export
zmien_rodzine_czcionek <- function(g, family) {
  stopifnot(inherits(g, "gg"),
            is.character(family), length(family) == 1L)
  if (is.na(family)) {
    if (!is.null(g$theme$text$family)) {
      family <- g$theme$text$family
    } else {
      family <- theme_get()$text$family
    }
  }
  if (!(family %in% c(fonts(), "sans", "serif", "mono")) & family != "") {
    message("Czcionki z rodziny '", family,
            "' nie są obecnie dostępne w R. Domyślnie R udostępnia tylko podstawowy zestaw czcionek, można go jednak rozszerzyć, importując czcionki zarejestrowane w Twoim systemie operacyjnym, co powinno rozwiązać ten problem.\n",
            "Aby przeprowadzić taki import wywołaj w konsoli polecenia:\n\n",
            "extrafont::font_import()\n",
            "extrafont::loadfonts(quiet = TRUE)")
  }

  textGeoms <- sapply(g$layers,
                      function(x) inherits(x$geom, c("GeomText", "GeomLabel")))
  g$layers[textGeoms] <-
    lapply(g$layers[textGeoms],
           function(x, size, rescale, family) {
             if (!("family" %in% names(x$computed_mapping))) {
               # to jest sztuczka pozwalając obejść bardzo specyficzne zachowania
               # obiektów typu ggproto, a konkretnie utworzyć kopię istniejącej
               # warstwy, która nie będzie w żaden sposób powiązana z obiektem
               # na podobieństwo którego jest tworzona
               x <- do.call("ggproto", as.list(x))
               x$aes_params$family <- family
             }
             return(x)
           }, family = family)
  return(g)
}
