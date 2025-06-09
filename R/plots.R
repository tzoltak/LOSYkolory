#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem uzyskiwania
#' dyplomów w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneDyplomy], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresDyplomy
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneDyplomy,
#'        aes(pct, plec, fill = dyplom,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = dyplom),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 7) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.01)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "dyplomyZaw",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "dyplomyZaw", guide = "none") +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresDyplomy"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem dziedzin
#' kontynuowania nauki na studiach w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneKontynuacjeDziedziny], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresKontynuacjeDziedziny
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontynuacjeDziedziny,
#'        aes(pct, dziedzina, fill = plec,
#'            label = percent_pl(pct, digits = 0))) +
#'   geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
#'   geom_text(position = position_dodge2(width = 1, reverse = TRUE),
#'             size = 5, hjust = -0.2) +
#'   scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "plec",
#'                   guide = guide_legend(ncol = 3)) +
#'   scale_colour_losy_fg(NULL, type = "plec", guide = "none") +
#'   theme_losy()  +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresKontynuacjeDziedziny"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem form kontynuowania
#' nauki w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneKontynuacjeTypSzk], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresKontynuacjeTypSzk
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontynuacjeTypSzk,
#'        aes(pct, plec, fill = kontynuacja,
#'            label = percent_pl(pct, digits = 0))) +
#'   geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
#'   geom_text(position = position_dodge2(width = 1, reverse = TRUE),
#'             size = 6, hjust = -0.2) +
#'   scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
#'   scale_y_discrete(NULL) +
#'   scale_fill_losy(NULL, type = "kontynuacje",
#'                   guide = guide_legend(ncol = 3)) +
#'   scale_colour_losy_fg(NULL, type = "kontynuacje", guide = "none") +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresKontynuacjeTypSzk"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem wyników matury w podziale
#' ze względu na wyuczony zawód.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneMatury], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresMatury
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneMatury,
#'        aes(pct, zawod, fill = dyplom,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = dyplom),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 6) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.02)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "matura",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "matura", guide = "none") +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresMatury"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem płci w podziale ze względu
#' na typ ukończonej szkoły.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [danePlec], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresPlec
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(danePlec,
#'        aes(pct, typ_szk, fill = plec,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = plec),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 7) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.02)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "plec",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "plec", guide = "none") +
#'   theme_minimal(base_size = 18) +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresPlec"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem statusów
#' edukacyjno-zawodowych ze względu na miesiąc od ukończenia szkoły.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneStatusy], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresStatusy
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneStatusy,
#'        aes(miesiac, pct, fill = status,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = status),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 5) +
#'   scale_x_discrete("Miesiąc") +
#'   scale_y_continuous("Odsetek absolwentów", labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0)) +
#'   scale_fill_losy(NULL, type = "statusy",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "statusy", guide = "none") +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresStatusy"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem statusów
#' edukacyjno-zawodowych ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneStatusyPlec], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresStatusyPlec
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneStatusyPlec,
#'        aes(pct, plec, fill = status,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = status),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 7) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.01)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "statusy",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "statusy", guide = "none") +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresStatusyPlec"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem typów ukończonych szkół.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneTypySzkol], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresTypySzkol
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneTypySzkol,
#'        aes(pct, factor(rok_abs), fill = typ_szk,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = typ_szk),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 7) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.01)) +
#'   scale_y_discrete(NULL, expand = c(0, 0))  +
#'   scale_fill_losy(NULL, type = "typySzkol",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "typySzkol", guide = "none") +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresTypySzkol"
