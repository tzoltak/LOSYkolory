#' @title Skale kolorow
#' @description
#' Umożliwia zdefiniowanie w wykresie *[ggplot2][ggplot2::ggplot]* skali kolorów
#' spośród jednej z używanych w monitoringu karier absolwentów szkół
#' ponadpodstawowych.
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams create_palette_losy_fun
#' @param ... dodatkowe argumenty przekazywane do [ggplot2::discrete_scale()]
#' @seealso [scale_fill_losy()], [scale_fill_losy_fg()]
#' @importFrom ggplot2 discrete_scale waiver
#' @export
scale_color_losy <- function(name = waiver(), ...,
                             type = c("statusy", "plec", "matura", "dyplomyZaw",
                                      "typySzkol", "kontynuacje"),
                             aesthetics = "colour") {
  type <- match.arg(type, several.ok = FALSE)
  discrete_scale(aesthetics, name = name,
                 palette = create_palette_losy_fun(type), ...)
}
#' @rdname scale_color_losy
#' @export
scale_colour_losy <- function(name = waiver(), ...,
                              type = c("statusy", "plec", "matura", "dyplomyZaw",
                                       "typySzkol", "kontynuacje"),
                              aesthetics = "colour") {
  return(scale_color_losy(name = name, ..., type = type, aesthetics = aesthetics))
}
#' @title Skale kolorow
#' @description
#' Umożliwia zdefiniowanie w wykresie *[ggplot2][ggplot2::ggplot]* skali kolorów
#' wypełnienia spośród jednej z używanych w monitoringu karier absolwentów szkół
#' ponadpodstawowych.
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams create_palette_losy_fun
#' @param ... dodatkowe argumenty przekazywane do [ggplot2::discrete_scale()]
#' @seealso [scale_color_losy()], [scale_color_losy_fg()],
#' [wykresDyplomy], [wykresKontynuacjeDziedziny], [wykresKontynuacjeTypSzk],
#' [wykresMatury], [wykresPlec], [wykresStatusy], [wykresStatusyPlec],
#' [wykresTypySzkol]
#' @examples
#' library(ggplot2)
#' p <- ggplot(daneTypySzkol,
#'             aes(pct, factor(rok_abs), fill = typ_szk,
#'                 label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE))
#' p
#' p + scale_fill_losy(type = "typySzkol")
#' @importFrom ggplot2 discrete_scale waiver
#' @export
scale_fill_losy <- function(name = waiver(), ...,
                            type = c("statusy", "plec", "matura", "dyplomyZaw",
                                     "typySzkol", "kontynuacje"),
                            aesthetics = "fill") {
  type <- match.arg(type, several.ok = FALSE)
  discrete_scale(aesthetics, name = name,
                 palette = create_palette_losy_fun(type),
                 ...)
}
