#' @title Temat wykresu na potrzeby monitoringu karier
#' @description
#' Nadaje wykresowi *[temat][ggplot2::theme_minimal()]* definiujący jego wygląd
#' (ale nie *układ*) odpowiedni do wykorzystania na potrzeby systemu monitoringu
#' karier absolwentów szkół ponadpodstawowych.
#' @param base_size liczba, p. [ggplot2::theme_minimal()]
#' @param base_family opcjonalnie ciąg znaków, p. [ggplot2::theme_minimal()]
#' @param base_line_size opcjonalnie liczba, p. [ggplot2::theme_minimal()]
#' @param base_rect_size opcjonalnie liczba, p. [ggplot2::theme_minimal()]
#' @examples
#' library(ggplot2)
#' p <- ggplot(daneTypySzkol,
#'             aes(pct, factor(rok_abs), fill = typ_szk,
#'                 label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = typ_szk),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 7) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.01)) +
#'   scale_y_discrete(NULL, expand = c(0, 0))  +
#'   scale_fill_losy(NULL, type = "typySzkol",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "typySzkol", guide = "none")
#' p
#' p +
#'   theme_losy(base_family = "sans")
#' @seealso [zmien_wielkosc_czcionek()], [zmien_rodzine_czcionek()],
#' [wykresDyplomy], [wykresKontynuacjeDziedziny], [wykresKontynuacjeTypSzk],
#' [wykresMatury], [wykresPlec], [wykresStatusy], [wykresStatusyPlec],
#' [wykresTypySzkol]
#' @importFrom extrafont fonts
#' @importFrom ggplot2 %+replace% element_blank element_line element_text
#' theme theme_minimal unit
#' @export
theme_losy <- function(base_size = 18, base_family = "",
                       base_line_size = base_size/22,
                       base_rect_size = base_size/22) {
  stopifnot(is.character(base_family), length(base_family) == 1L,
            !anyNA(base_family))
  if (!(base_family %in% fonts()) & base_family != "") {
    message("Czcionki z rodziny '", base_family,
            "' nie są obecnie dostępne w R. Domyślnie R udostępnia tylko podstawowy zestaw czcionek, można go jednak rozszerzyć, importując czcionki zarejestrowane w Twoim systemie operacyjnym, co powinno rozwiązać ten problem.\n",
            "Aby przeprowadzić taki import wywołaj w konsoli polecenia:\n\n",
            "extrafont::font_import()\n",
            "extrafont::loadfonts(quiet = TRUE)")
  }
  return(theme_minimal(base_size = base_size, base_family = base_family,
                       base_line_size = base_line_size,
                       base_rect_size = base_rect_size) %+replace%
           theme(axis.ticks.x = element_line(colour = "grey20"),
                 axis.ticks.length.x = unit(base_size/3, "pt"),
                 legend.position = "bottom",
                 legend.byrow = TRUE,
                 plot.caption.position = "plot",
                 plot.caption = element_text(size = base_size*0.85, hjust = 0),
                 panel.grid = element_blank()))
}
