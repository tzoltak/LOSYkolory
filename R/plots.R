#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem częstości bycia zarejestrowanym jako
#' bezrobotny ze względu na miesiąc od ukończenia szkoły.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneBezrobocie], [percent_pl()], [palette_losy()], [theme_losy()]
#' @examples
#' wykresBezrobocie
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneBezrobocie,
#'        aes(miesiac, bezrobocie, group = 1,
#'            label = percent_pl(bezrobocie, digits = 0))) +
#'   geom_line(linewidth = 0.7, colour = palette_losy("bezrobocie")["line"]) +
#'   geom_point(size = 5, colour = palette_losy("bezrobocie")["point"]) +
#'   geom_text(size = 6, nudge_y = -0.005) +
#'   scale_x_discrete("Miesiąc")  +
#'   scale_y_continuous("Odsetek bezrobotnych absolwentów",
#'                      labels = label_percent_pl(),
#'                      limits = c(0, NA_real_), expand = c(0, 0, 0.05, 0)) +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresBezrobocie"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem częstości bycia zarejestrowanym jako
#' bezrobotny pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do
#' wykorzystania w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneBezrobocieOkresGrupaOdn], [percent_pl()], [scale_fill_losy()],
#' [theme_losy()]
#' @examples
#' wykresBezrobocieOkresGrupaOdn
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneBezrobocieOkresGrupaOdn,
#'        aes(okres_bezrobocia, pct, fill = grupa,
#'            label = percent_pl(pct, digits = 0))) +
#'   facet_wrap(vars(grupa), nrow = 1) +
#'   geom_col() +
#'   geom_text(size = 5, nudge_y = 0.03) +
#'   scale_x_discrete("Liczba miesięcy bezrobocia")  +
#'   scale_y_continuous("Odsetek absolwentów",
#'                      labels = label_percent_pl(),
#'                      limits = c(0, 1), expand = c(0, 0, 0.05, 0)) +
#'   scale_fill_losy(NULL, type = "grupaOdn", unname = TRUE, guide = "none") +
#'   theme_losy(axis_ticks = "y")
"wykresBezrobocieOkresGrupaOdn"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem częstości bycia
#' zarejestrowanym jako bezrobotny w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneBezrobociePlec], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresBezrobociePlec
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneBezrobociePlec,
#'        aes(pct, plec, fill = bezrobocie,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = bezrobocie),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 6) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.02)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "bezrobocie",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "bezrobocie", guide = "none") +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresBezrobociePlec"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem częstości bycia
#' zarejestrowanym jako bezrobotny  podziale ze względu na (najczęściej
#' wybierane) zawody wyuczone.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneBezrobocieZawod], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresBezrobocieZawod
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneBezrobocieZawod,
#'        aes(pct, nazwa_zaw, fill = bezrobocie,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = bezrobocie),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 6) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.02)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "bezrobocie",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "bezrobocie", guide = "none") +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresBezrobocieZawod"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem uzyskiwania
#' dyplomów w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneDyplomyPlec], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresDyplomyPlec
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneDyplomyPlec,
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
"wykresDyplomyPlec"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem uzyskiwania
#' dyplomów w podziale ze względu na (najczęściej wybierane) zawody wyuczone.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneDyplomyZawod], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresDyplomyZawod
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneDyplomyZawod,
#'        aes(pct, nazwa_zaw, fill = dyplom,
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
"wykresDyplomyZawod"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem formy zatrudnienia pomiędzy
#' daną szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania
#' w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneFormyZatrudnGrupaOdn], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresFormyZatrudnGrupaOdn
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneFormyZatrudnGrupaOdn,
#'        aes(grupa, pct, fill = forma_zatrudn,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = FALSE)) +
#'   geom_text(aes(colour = forma_zatrudn),
#'             position = position_stack(reverse = FALSE, vjust = 0.5),
#'             size = 6) +
#'   scale_x_discrete(NULL, expand = c(0, 0)) +
#'   scale_y_continuous("Odsetek absolwentów", labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.01)) +
#'   scale_fill_losy(NULL, type = "formyZatrudn",
#'                   guide = guide_legend(ncol = 1)) +
#'   scale_colour_losy_fg(NULL, type = "formyZatrudn", guide = "none") +
#'   theme_losy(axis_ticks = "y")
"wykresFormyZatrudnGrupaOdn"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem częstości kontynuowania
#' pracy u tego samego pracodawcy, u którego absolwent był młodocianym
#' pracownikiem, wśród absolwentów kontynuujących naukę pomiędzy daną szkołą
#' a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach
#' szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneKontMlodocPracEduGrupaOdn], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresKontMlodocPracEduGrupaOdn
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontMlodocPracEduGrupaOdn,
#'        aes(pct, grupa, fill = kont_mlodoc_prac,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = kont_mlodoc_prac),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 5) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "kontMlodocPracEdu",
#'                   guide = guide_legend(ncol = 1)) +
#'   scale_colour_losy_fg(NULL, type = "kontMlodocPracEdu", guide = "none") +
#'   theme_losy()
"wykresKontMlodocPracEduGrupaOdn"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem częstości kontynuowania
#' pracy u tego samego pracodawcy, u którego absolwent był młodocianym
#' pracownikiem, wśród absolwentów niekontynuujących nauki pomiędzy daną szkołą
#' a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach
#' szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneKontMlodocPracNeduGrupaOdn], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresKontMlodocPracNeduGrupaOdn
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontMlodocPracNeduGrupaOdn,
#'        aes(pct, grupa, fill = kont_mlodoc_prac,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   geom_text(aes(colour = kont_mlodoc_prac),
#'             position = position_stack(reverse = TRUE, vjust = 0.5),
#'             size = 5) +
#'   scale_x_continuous(NULL, labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "kontMlodocPracNedu",
#'                   guide = guide_legend(ncol = 1)) +
#'   scale_colour_losy_fg(NULL, type = "kontMlodocPracNedu", guide = "none") +
#'   theme_losy()
"wykresKontMlodocPracNeduGrupaOdn"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem dziedzin
#' kontynuowania nauki na studiach w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneKontynuacjeDziedzinyPlec], [percent_pl()], [scale_fill_losy()],
#' [theme_losy()]
#' @examples
#' wykresKontynuacjeDziedzinyPlec
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontynuacjeDziedzinyPlec,
#'        aes(pct, dziedzina, fill = plec,
#'            label = percent_pl(pct, digits = 0))) +
#'   geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
#'   geom_text(position = position_dodge2(width = 1, reverse = TRUE),
#'             size = 5, hjust = -0.2) +
#'   scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "plec",
#'                   guide = guide_legend(ncol = 3)) +
#'   theme_losy()  +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresKontynuacjeDziedzinyPlec"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem (najczęściej wybieranych)
#' dyscyplin kontynuowania nauki na studiach w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneKontynuacjeDyscyplinyPlec], [percent_pl()], [scale_fill_losy()],
#' [theme_losy()]
#' @examples
#' wykresKontynuacjeDyscyplinyPlec
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontynuacjeDyscyplinyPlec,
#'        aes(pct, dyscyplina, fill = plec,
#'            label = percent_pl(pct, digits = 0))) +
#'   geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
#'   geom_text(position = position_dodge2(width = 1, reverse = TRUE),
#'             size = 5, hjust = -0.2) +
#'   scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
#'   scale_y_discrete(NULL, expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "plec",
#'                   guide = guide_legend(ncol = 3)) +
#'   theme_losy()  +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresKontynuacjeDyscyplinyPlec"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem częstości typu kontynuowania
#' nauki - do wykorzystania w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneKontynuacjeTypSzk], [percent_pl()], [theme_losy()]
#' @examples
#' wykresKontynuacjeTypSzk
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontynuacjeTypSzk,
#'        aes(pct, kontynuacja, label = percent_pl(pct, digits = 0))) +
#'   geom_col(position = position_dodge2(width = 1, reverse = TRUE),
#'            fill = "#009899") +
#'   geom_text(position = position_dodge2(width = 1, reverse = TRUE),
#'             size = 6, hjust = -0.2) +
#'   scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
#'   scale_y_discrete(NULL) +
#'   theme_losy()
"wykresKontynuacjeTypSzk"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem form kontynuowania
#' nauki w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneKontynuacjeTypSzkPlec], [percent_pl()], [scale_fill_losy()],
#' [theme_losy()]
#' @examples
#' wykresKontynuacjeTypSzkPlec
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontynuacjeTypSzkPlec,
#'        aes(pct, plec, fill = kontynuacja,
#'            label = percent_pl(pct, digits = 0))) +
#'   geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
#'   geom_text(position = position_dodge2(width = 1, reverse = TRUE),
#'             size = 6, hjust = -0.2) +
#'   scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
#'   scale_y_discrete(NULL) +
#'   scale_fill_losy(NULL, type = "kontynuacje",
#'                   guide = guide_legend(ncol = 3)) +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresKontynuacjeTypSzkPlec"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem form kontynuowania
#' nauki w podziale ze względu na (najczęściej wybierane) zawody wyuczone.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneKontynuacjeTypSzkZawod], [percent_pl()], [scale_fill_losy()],
#' [theme_losy()]
#' @examples
#' wykresKontynuacjeTypSzkZawod
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontynuacjeTypSzkZawod,
#'        aes(pct, nazwa_zaw, fill = kontynuacja,
#'            label = percent_pl(pct, digits = 0))) +
#'   geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
#'   geom_text(position = position_dodge2(width = 1, reverse = TRUE),
#'             size = 6, hjust = -0.2) +
#'   scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
#'   scale_y_discrete(NULL) +
#'   scale_fill_losy(NULL, type = "kontynuacje",
#'                   guide = guide_legend(ncol = 3)) +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresKontynuacjeTypSzkZawod"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem wyników matury w podziale
#' ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneMaturyPlec], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresMaturyPlec
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneMaturyPlec,
#'        aes(pct, plec, fill = dyplom,
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
"wykresMaturyPlec"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem wyników matury w podziale
#' ze względu na (najczęściej wybierane) zawody wyuczone
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneMaturyZawod], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresMaturyZawod
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneMaturyZawod,
#'        aes(pct, nazwa_zaw, fill = dyplom,
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
"wykresMaturyZawod"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym kartogramem ilustrującym migracje na
#' poziomie województw (procent absolwentów mieszkających w poszczególnych
#' województwach).
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneMigracjeWoj], [percent_pl()], [theme_losy()],
#' [scale_colour_gradient_fg], [st_point_on_surface_sw()]
#' @examples
#' wykresMigracjeWoj
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(zlacz_z_mapa(daneMigracjeWoj),
#'       aes(fill = pct, colour = pct,
#'          label = percent_pl(pct, digits = 1))) +
#'   geom_sf() +
#'   geom_sf_text(size = 5,
#'                fun.geometry = st_point_on_surface_sw) +
#'   geom_sf_text(aes(label = label), colour = "black", size = 5,
#'                hjust = "left", vjust = "bottom",
#'                data = function(x) {
#'                  x <- x[x$nazwa_woj == "nieznane", ]
#'                 x$label <- rep("Nieznane     \nwojewództwo", nrow(x))
#'                 if (nrow(x) > 0L) {
#'                   x$geometryProperty <-
#'                     sf::st_sfc(sf::st_point(c(14.6, 49.7)),
#'                                crs = attributes(x$geometryProperty)$crs)
#'                 }
#'                 return(x)
#'               },
#'               fun.geometry = st_point_on_surface_sw) +
#'   scale_x_continuous(NULL, labels = function(x) {return(rep("", length(x)))},
#'                      expand = c(0, 0)) +
#'   scale_y_continuous(NULL, labels = function(x) {return(rep("", length(x)))},
#'                      expand = c(0, 0)) +
#'   scale_fill_gradient("Procent absolwentów", low = "#efefff", high = "#25304d",
#'                       guide = "none") +
#'   scale_colour_gradient_fg(NULL, low = "#efefff", high = "#25304d") +
#'   theme_losy(axis_ticks = "none") +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresMigracjeWoj"
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
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 3254)
"wykresPlec"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem części okresu posiadania
#' pracy (w ramach okresu od września do grudnia roku ukończenia szkoły)
#' pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do
#' wykorzystania w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [danePracaOkresGrupaOdn], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresPracaOkresGrupaOdn
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(danePracaOkresGrupaOdn,
#'        aes(grupa, pct, fill = okres_pracy,
#'            label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
#'   geom_col(position = position_stack(reverse = FALSE)) +
#'   geom_text(aes(colour = okres_pracy),
#'             position = position_stack(reverse = FALSE, vjust = 0.5),
#'             size = 6) +
#'   scale_x_discrete(NULL, expand = c(0, 0)) +
#'   scale_y_continuous("Odsetek absolwentów", labels = label_percent_pl(),
#'                      expand = c(0, 0, 0, 0.01)) +
#'   scale_fill_losy(NULL, type = "okresPracy",
#'                   guide = guide_legend(nrow = 1)) +
#'   scale_colour_losy_fg(NULL, type = "okresPracy", guide = "none") +
#'   theme_losy(axis_ticks = "y")
"wykresPracaOkresGrupaOdn"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem częstości występowania
#' poszczególnych ścieżek edukacyjno-zawodowych, definiowanych jako kombinacje
#' statusu edukacyjno-zawodowego w trzech punktach czasu: w 6, 30 i 54 miesiące
#' od ukończenia szkoły.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [danePrzeplywyStatusy], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()], [ggalluvial::geom_flow()],
#' [ggalluvial::geom_stratum()], [ggalluvial::stat_flow()]
#' @examples
#' library(ggalluvial)
#' wykresPrzeplywyStatusy
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(danePrzeplywyStatusy,
#'        aes(x = okres, alluvium = idKombinacji,
#'            y = pct,
#'            stratum = status, fill = status)) +
#'   geom_flow(reverse = FALSE) +
#'   geom_stratum(reverse = FALSE) +
#'   geom_text(aes(label = percent_pl(after_stat(prop),
#'                                    digits = 1, hideBelow = 0.05),
#'                 colour = status),
#'             size = 6, reverse = FALSE, stat = "stratum") +
#'   stat_flow(aes(weight = pctStatus,
#'                 label = ifelse(after_stat(flow) == "from",
#'                                percent_pl(after_stat(n), digits = 1),
#'                                ""),
#'                 alpha = ifelse(after_stat(flow) == "from", 1, 0)),
#'             size = 4,
#'             reverse = FALSE, position = position_nudge(x = 0.25),
#'             min.y = 0.01,
#'             geom = "text") +
#'   scale_x_discrete(NULL, expand = c(0, 0)) +
#'   scale_y_continuous("Procent", labels = label_percent_pl(), expand = c(0, 0)) +
#'   scale_fill_losy(NULL, type = "statusy",
#'                   guide = guide_legend(ncol = 2)) +
#'   scale_colour_losy_fg(NULL, type = "statusy", guide = "none") +
#'   scale_alpha_identity(guide = guide_none()) +
#'   theme_losy() +
#'   dodaj_rok_w_podpisie(rok = 2024)
"wykresPrzeplywyStatusy"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem parametrów rozkładu
#' przychodów z pracy (etatowej) pomiędzy daną szkołą a odpowiadającą jej
#' *grupą odniesienia* - do wykorzystania w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [danePrzychodyGrupaOdn], [percent_pl()], [scale_fill_losy()],
#' [theme_losy()]
#' @examples
#' wykresPrzychodyGrupaOdn
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(danePrzychodyGrupaOdn,
#'        aes(grupa)) +
#'   geom_boxplot(aes(ymin = c05, lower = c25, middle = c50, upper = c75,
#'                    ymax = c95, fill = grupa),
#'                stat = "identity", staplewidth = 1, linewidth = 1,
#'                width = 0.6) +
#'   geom_text(aes(y = wartosc, label = percent_pl(wartosc, digits = 0)),
#'             data = ~data.frame(grupa = rep(.x$grupa, 5),
#'                                wartosc = unlist(.x[, c("c05", "c25", "c50",
#'                                                        "c75", "c95")])),
#'             size = 5, position = position_nudge(x = -0.4)) +
#'   scale_x_discrete(NULL, expand = c(0, 0.6, 0, 0.5)) +
#'   scale_y_continuous(paste(c("Przychody absolwentów z pracy etatowej",
#'                              "w odniesieniu do przeciętnego",
#'                              "wynagrodzenia w powiatach"), collapse = "\n"),
#'                      labels = label_percent_pl(),
#'                      limits = c(0, NA_real_), expand = c(0, 0, 0, 0.01)) +
#'   scale_fill_losy(NULL, type = "grupaOdn", unname = TRUE, guide = "none") +
#'   theme_losy(axis_ticks = "y")
"wykresPrzychodyGrupaOdn"
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
#' @description Wykres z przykładowym zestawieniem statusów
#' edukacyjno-zawodowych ze względu na (najczęściej wybierane) zawody wyuczone.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneStatusyZawod], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresStatusyZawod
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneStatusyZawod,
#'        aes(pct, nazwa_zaw, fill = status,
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
"wykresStatusyZawod"
#' @title Przykladowe wykresy
#' @description Wykres z przykładowym zestawieniem statusów
#' edukacyjno-zawodowych pomiędzy daną szkołą (ew. danym zawodem w danej szkole)
#' a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach
#' szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [daneStatusyGrupaOdn], [percent_pl()], [scale_fill_losy()],
#' [scale_colour_losy_fg()], [theme_losy()]
#' @examples
#' wykresStatusyGrupaOdn
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneStatusyGrupaOdn,
#'        aes(pct, grupa, fill = status,
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
#'   theme_losy()
"wykresStatusyGrupaOdn"
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
