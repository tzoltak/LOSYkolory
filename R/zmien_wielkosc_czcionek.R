#' @title Modyfikowanie elementow wykresu
#' @description
#' Funkcje zmieniające wielkość elementów tekstowych na wykresie
#' *[ggplot2][ggplot2::ggplot]*:
#'
#' -  `zmien_wielkosc_czcionek()` pozwala zmienić jednocześnie wielkość
#'    elementów tekstowych *tematu* wykresu (etykiety i wartości osi, elementy
#'    legendy, tytuły itp.) oraz wielkość *geometrii* (tekstowych),
#'    przy czym zmianę wielkości tych drugich można zablokować korzystając
#'    z argumentu `geoms=FALSE`,
#' -  `zmien_wielkosc_etykiet()` pozwala zmienić wyłącznie wielkość *geometrii*
#'    (tekstowych).
#'
#' Jako *geometrie* tekstowe traktowane są te, które zostały utworzone za pomocą
#' funkcji [ggplot2::geom_text()] lub [ggplot2::geom_label()]. W praktyce
#' monitoringu karier odpowiadają one za prezentowanie etykiet wartości
#' procentowych na wykresach słupkowych.
#'
#' Wielkość *geometrii* tekstowych zostanie zmieniona **tylko wtedy**, jeśli
#' **nie** jest *mapowana* z danych (w wywołaniu [ggplot2::aes()] dla całego
#' wykresu lub danej *geometrii*), tzn. jest stała dla wszystkich jednostek
#' prezentowanych daną *geometrią*.
#'
#' Jeśli `geoms=TRUE`, za pośrednictwem zmian w *temacie* wykresu
#' **we wszystkich *warstwach* ** zostaną też zmienione wartości wszystkich
#' *estetyk*, które mapują się na domyślną wartość *estetyki* `fontsize`
#' definiowaną w ramach elementu `geom` *tematu* danego wykresu
#' (por. [ggplot2::from_theme()]).
#' @param g wykres *[ggplot2][ggplot2::ggplot]*
#' @param baseSize opcjonalnie liczba - bazowa wielkość czcionki - działa jak
#' argument `base_size` w funkcjach pakietu *ggplot2* ustawiających
#' *[predefiniowane tematy][ggplot2::theme_minimal]* wykresu (por. szczegółowy
#' opis poniżej)
#' @param size opcjonalnie liczba - wielkość czcionki (w mm), jaka zostanie
#' nadana wszystkim *geometriom* tekstowym wykresu
#' @param rescale opcjonalnie liczba, przez którą przemnożona zostanie wielkość
#' wszystkich czcionek w elementach tekstowych *[tematu][ggplot2::theme()]*
#' wykresu *ggplot2* oraz/albo wielkość czcionek wszystkich *geometrii*
#' tekstowych wykresu
#' @param geoms wartość logiczna (domyślnie `TRUE`), wskazująca, czy
#' zmieniona ma być również wielkość czcionek w *geometriach* (zarówno
#' zdefiniowanych na wykresie, jak i w domyślnej *geometrii* w *temacie* danego
#' wykresu)
#' @details
#' W wywołaniach funkcji można podać wartość tylko argumentu `rescale` albo
#' tylko argumentu `baseSize`/`size`.
#'
#' Zmiana wielkości przez `zmien_wielkosc_czcionek()` jest zaimplementowana
#' w ten sposób, że jeśli podany został argument `baseSize`, to jego wartość
#' jest dzielona przez dotychczasową wartość wielkości elementu `text` *tematu*
#' danego wykresu, a uzyskana wartość używana jest następnie tak, jakby została
#' podana przy pomocy argumentu `rescale`. Funkcja przechodzi przez wszystkie
#' elementy tekstowe *tematu* danego wykres i jeśli wielkość jest w nich
#' ustawiona w sposób absolutny, modyfikuje ją mnożąc przez wartość argumentu
#' `rescale` (jeśli wielkość jakiegoś elementu tekstowego jest zdefiniowana
#' relatywnie, jej definicja zostaje pozostawiona bez zmian, gdyż zmiana
#' wielkości zostanie na nią spropagowana automatycznie). Jeśli dany wykres nie
#' miał jeszcze przypisanego żadnego *tematu*, zostanie mu przypisany temat
#' zwrócony przez [ggplot2::theme_get()], a następnie dokonane zostaną
#' modyfikacje wielkości elementów tekstowych.
#' @returns wykres *[ggplot2][ggplot2::ggplot]*
#' @seealso [zmien_rodzine_czcionek()], [zmien_prog_pokazywania_etykiet()]
#' @examples
#' library(ggplot2)
#' p <- ggplot(daneTypySzkol,
#'             aes(pct, factor(rok_abs), fill = typ_szk,
#'                 label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(position = position_stack(reverse = TRUE, vjust = 0.5),
#'             colour = "black")
#'
#' p
#' zmien_wielkosc_czcionek(p, baseSize = 20)
#' zmien_wielkosc_czcionek(p, baseSize = 20, geoms = FALSE)
#' zmien_wielkosc_czcionek(p, rescale = 1.5)
#' zmien_wielkosc_czcionek(p, rescale = 1.5, geoms = FALSE)
#' # lub w pipie:
#' p |> zmien_wielkosc_czcionek(baseSize = 20)
#'
#' zmien_wielkosc_etykiet(p, size = 10)
#' p |> zmien_wielkosc_etykiet(rescale = 0.8)
#'
#' # jeśli wielkość geometri jest mapowana z danych, nie zostanie zmieniona:
#' ps <- ggplot(daneTypySzkol,
#'              aes(pct, factor(rok_abs), fill = typ_szk,
#'              label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(size = pct),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             colour = "black")
#' ps
#' zmien_wielkosc_etykiet(ps, size = 10)
#' zmien_wielkosc_czcionek(ps, baseSize = 20)
#' @importFrom ggplot2 ggproto theme_get
#' @export
zmien_wielkosc_czcionek <- function(g, baseSize = NULL, rescale = NULL,
                                    geoms = TRUE) {
  stopifnot(inherits(g, "gg"),
            !is.null(baseSize) | !is.null(rescale),
            is.null(baseSize) | is.null(rescale),
            is.logical(geoms), length(geoms) == 1L,
            !anyNA(geoms))
  if (length(g$theme) == 0L) {
    g$theme <- theme_get()
  }
  if (!is.null(baseSize)) {
    stopifnot(is.numeric(baseSize), length(baseSize) == 1L, !anyNA(baseSize),
              baseSize > 0, is.finite(baseSize),
              !is.null(g$theme$text))
    rescale <- baseSize / g$theme$text$size
  }
  stopifnot(is.numeric(rescale), length(rescale) == 1L, !anyNA(rescale),
            rescale > 0, is.finite(rescale))

  themeTextElements <- sapply(g$theme,
                              function(x) inherits(x, c("element_text",
                                                        "ggplot2::element_text")))
  g$theme[themeTextElements] <-
    lapply(g$theme[themeTextElements],
           function(x) {
             if (!is.null(x$size) & !inherits(x$size, "rel")) {
               x$size <- x$size*rescale
             }
             return(x)
           })
  if (geoms) {
    if (inherits(g$theme$geom, "ggplot2::element_geom")) {
      if (!is.null(g$theme$geom$fontsize) &
          !inherits(g$theme$geom$fontsize, "rel")) {
        g$theme$geom$fontsize <- g$theme$geom$fontsize*rescale
      }
    }
    geoms <- sapply(g$layers,
                        function(x) inherits(x$geom, c("GeomText", "GeomLabel")))
    g$layers[geoms] <-
      lapply(g$layers[geoms],
             function(x, theme) {
               if ("size" %in% names(x$computed_mapping)) {
                 return(x)
               }
               if (is.null(x$aes_params$size)) {
                 if (is.language(x$geom$default_aes$size)) {
                   return(x)
                 } else {
                   size <- x$geom$default_aes$size*rescale
                 }
               } else {
                 size <- x$aes_params$size*rescale
               }
               # to jest sztuczka pozwalając obejść bardzo specyficzne zachowania
               # obiektów typu ggproto, a konkretnie utworzyć kopię istniejącej
               # warstwy, która nie będzie w żaden sposób powiązana z obiektem
               # na podobieństwo którego jest tworzona
               x <- do.call("ggproto", as.list(x))
               x$aes_params$size <- size
               return(x)
             }, theme = g$theme)
  }
  return(g)
}
#' @rdname zmien_wielkosc_czcionek
#' @export
zmien_wielkosc_etykiet <- function(g, size = NULL, rescale = NULL) {
  stopifnot(inherits(g, "gg"),
            !is.null(size) | !is.null(rescale),
            is.null(size) | is.null(rescale))
  if (!is.null(size)) {
    stopifnot(is.numeric(size), length(size) == 1L, !anyNA(size),
              size > 0, is.finite(size))
  } else {
    stopifnot(is.numeric(rescale), length(rescale) == 1L, !anyNA(rescale),
              rescale > 0, is.finite(rescale))
  }

  if (inherits(g$theme$geom, "ggplot2::element_geom")) {
    if (!is.null(g$theme$geom$fontsize) &
        !inherits(g$theme$geom$fontsize, "rel")) {
      g$theme$geom$fontsize <- g$theme$geom$fontsize*rescale
    }
  }
  geoms <- sapply(g$layers,
                      function(x) inherits(x$geom, c("GeomText", "GeomLabel")))
  g$layers[geoms] <-
    lapply(g$layers[geoms],
           function(x, size, rescale) {
             if (!("size" %in% names(x$computed_mapping))) {
               # to jest sztuczka pozwalając obejść bardzo specyficzne zachowania
               # obiektów typu ggproto, a konkretnie utworzyć kopię istniejącej
               # warstwy, która nie będzie w żaden sposób powiązana z obiektem
               # na podobieństwo którego jest tworzona
               x <- do.call("ggproto", as.list(x))
               if (!("size" %in% names(x$computed_mapping))) {
                 if (is.null(size)) {
                   if (is.null(x$aes_params$size)) {
                     if (is.language(x$geom$default_aes$size)) {
                       return(x)
                     } else {
                       size <- x$geom$default_aes$size*rescale
                     }
                   } else {
                     size <- x$aes_params$size*rescale
                   }
                 }
                 x$aes_params$size <- size
               }
             }
             return(x)
           }, size = size, rescale = rescale)
  return(g)
}
