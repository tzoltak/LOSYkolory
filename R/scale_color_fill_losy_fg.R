#' @title Wybor kontrastowego koloru
#' @description
#' Umożliwia zdefiniowanie w wykresie *[ggplot2][ggplot2::ggplot]* skali kolorów
#' mających jak najwyższy kontrast w stosunku do odpowiedniej ze zdefiniowanych
#' skal kolorów używanych w monitoringu karier absolwentów szkół
#' ponadpodstawowych.
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams create_palette_losy_fg_fun
#' @param ... dodatkowe argumenty przekazywane do [ggplot2::discrete_scale()]
#' @seealso [scale_fill_losy()], [pick_more_contrasting()], [scale_fill_losy_fg()],
#' [wykresDyplomy], [wykresKontynuacjeDziedziny], [wykresKontynuacjeTypSzk],
#' [wykresMatury], [wykresPlec], [wykresStatusy], [wykresStatusyPlec],
#' [wykresTypySzkol]
#' @examples
#' library(ggplot2)
#' p <- ggplot(daneTypySzkol,
#'             aes(pct, factor(rok_abs), fill = typ_szk,
#'                 label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = typ_szk),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 7) +
#'   scale_fill_losy(type = "typySzkol")
#' p
#' p + scale_color_losy_fg(type = "typySzkol", guide = "none")
#' @export
#' @importFrom ggplot2 discrete_scale waiver
#' @export
scale_color_losy_fg <- function(name = waiver(), ...,
                                type = c("statusy", "plec", "matura", "dyplomyZaw",
                                         "typySzkol", "kontynuacje"),
                                fgToChoose = c("white", "black"), wcag = "3",
                                aesthetics = "colour") {
  type <- match.arg(type, several.ok = FALSE)
  discrete_scale(aesthetics, name = name,
                 palette = create_palette_losy_fg_fun(type, fgToChoose), ...)
}
#' @rdname scale_color_losy_fg
#' @export
scale_colour_losy_fg <- function(name = waiver(), ...,
                                 type = c("statusy", "plec", "matura", "dyplomyZaw",
                                          "typySzkol", "kontynuacje"),
                                 fgToChoose = c("white", "black"), wcag = "3",
                                 aesthetics = "colour") {
  return(scale_color_losy_fg(name = name, ..., type = type,
                             fgToChoose = fgToChoose, aesthetics = aesthetics))
}
#' @title Wybor kontrastowego koloru
#' @description
#' Umożliwia zdefiniowanie w wykresie *[ggplot2][ggplot2::ggplot]* skali kolorów
#' wypełnienia mających jak najwyższy kontrast w stosunku do odpowiedniej ze
#' zdefiniowanych skal kolorów używanych w monitoringu karier absolwentów szkół
#' ponadpodstawowych.
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams create_palette_losy_fg_fun
#' @param ... dodatkowe argumenty przekazywane do [ggplot2::discrete_scale()]
#' @seealso [scale_fill_losy()], [pick_more_contrasting()], [scale_color_losy_fg()]
#' @importFrom ggplot2 discrete_scale waiver
#' @export
scale_fill_losy_fg <- function(name = waiver(), ...,
                               type = c("statusy", "plec", "matura", "dyplomyZaw",
                                        "typySzkol", "kontynuacje"),
                               fgToChoose = c("white", "black"), wcag = "3",
                               aesthetics = "fill") {
  type <- match.arg(type, several.ok = FALSE)
  discrete_scale(aesthetics, name = name,
                 palette = create_palette_losy_fg_fun(type, fgToChoose, wcag),
                 ...)
}
