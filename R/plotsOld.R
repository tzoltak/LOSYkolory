#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem częstości bycia zarejestrowanym jako
#' bezrobotny ze względu na miesiąc od ukończenia szkoły.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresBezrobocie]
#' @examples
#' wykresBezrobocieOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' # wykres jest tożsamy z tym w nowej skali kolorów
#' wykresBezrobocie
"wykresBezrobocieOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem częstości bycia zarejestrowanym jako
#' bezrobotny pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do
#' wykorzystania w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresBezrobocieOkresGrupaOdn]
#' @examples
#' wykresBezrobocieOkresGrupaOdnOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresBezrobocieOkresGrupaOdn +
#'                    scale_fill_losy(NULL, type = "grupaOdn", unname = TRUE,
#'                                    variantOld = TRUE, guide = "none"))
"wykresBezrobocieOkresGrupaOdnOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem częstości bycia
#' zarejestrowanym jako bezrobotny w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresBezrobociePlec]
#' @examples
#' wykresBezrobociePlecOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresBezrobociePlec +
#'                    scale_fill_losy(NULL, type = "bezrobocie",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "bezrobocie",
#'                                         variantOld = TRUE, guide = "none"))
"wykresBezrobociePlecOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem częstości bycia
#' zarejestrowanym jako bezrobotny  podziale ze względu na (najczęściej
#' wybierane) zawody wyuczone.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresBezrobocieZawod]
#' @examples
#' wykresBezrobocieZawodOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresBezrobocieZawod +
#'                    scale_fill_losy(NULL, type = "bezrobocie",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "bezrobocie",
#'                                         variantOld = TRUE, guide = "none"))
"wykresBezrobocieZawodOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem uzyskiwania
#' dyplomów w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresDyplomyPlec]
#' @examples
#' wykresDyplomyPlecOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresDyplomyPlec +
#'                    scale_fill_losy(NULL, type = "dyplomyZaw",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "dyplomyZaw",
#'                                         variantOld = TRUE, guide = "none"))
"wykresDyplomyPlecOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem uzyskiwania
#' dyplomów w podziale ze względu na (najczęściej wybierane) zawody wyuczone.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresDyplomyZawod]
#' @examples
#' wykresDyplomyZawodOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresDyplomyZawod +
#'                    scale_fill_losy(NULL, type = "dyplomyZaw",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "dyplomyZaw",
#'                                         variantOld = TRUE, guide = "none"))
"wykresDyplomyZawodOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem formy zatrudnienia pomiędzy
#' daną szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania
#' w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresFormyZatrudnGrupaOdn]
#' @examples
#' wykresFormyZatrudnGrupaOdnOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresFormyZatrudnGrupaOdn +
#'                    scale_fill_losy(NULL, type = "formyZatrudn",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 1)) +
#'                    scale_colour_losy_fg(NULL, type = "formyZatrudn",
#'                                         variantOld = TRUE, guide = "none"))
"wykresFormyZatrudnGrupaOdnOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem częstości kontynuowania
#' pracy u tego samego pracodawcy, u którego absolwent był młodocianym
#' pracownikiem, wśród absolwentów kontynuujących naukę pomiędzy daną szkołą
#' a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach
#' szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresKontMlodocPracEduGrupaOdn]
#' @examples
#' wykresKontMlodocPracEduGrupaOdnOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresKontMlodocPracEduGrupaOdn +
#'                    scale_fill_losy(NULL, type = "kontMlodocPracEdu",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 1)) +
#'                    scale_colour_losy_fg(NULL, type = "kontMlodocPracEdu",
#'                                         variantOld = TRUE, guide = "none"))
"wykresKontMlodocPracEduGrupaOdnOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem częstości kontynuowania
#' pracy u tego samego pracodawcy, u którego absolwent był młodocianym
#' pracownikiem, wśród absolwentów niekontynuujących nauki pomiędzy daną szkołą
#' a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach
#' szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresKontMlodocPracNeduGrupaOdn]
#' @examples
#' wykresKontMlodocPracNeduGrupaOdnOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresKontMlodocPracNeduGrupaOdn +
#'                    scale_fill_losy(NULL, type = "kontMlodocPracNedu",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 1)) +
#'                    scale_colour_losy_fg(NULL, type = "kontMlodocPracNedu",
#'                                         variantOld = TRUE, guide = "none"))
"wykresKontMlodocPracNeduGrupaOdnOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem dziedzin
#' kontynuowania nauki na studiach w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresKontynuacjeDziedzinyPlec]
#' @examples
#' wykresKontynuacjeDziedzinyPlecOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresKontynuacjeDziedzinyPlec +
#'                    scale_fill_losy(NULL, type = "plec", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 3)))
"wykresKontynuacjeDziedzinyPlecOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem (najczęściej wybieranych)
#' dyscyplin kontynuowania nauki na studiach w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresKontynuacjeDyscyplinyPlec]
#' @examples
#' wykresKontynuacjeDyscyplinyPlecOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresKontynuacjeDyscyplinyPlec +
#'                    scale_fill_losy(NULL, type = "plec", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 3)))
"wykresKontynuacjeDyscyplinyPlecOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem częstości typu kontynuowania
#' nauki - do wykorzystania w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresKontynuacjeTypSzk]
#' @examples
#' wykresKontynuacjeTypSzkOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' ggplot(daneKontynuacjeTypSzk,
#'        aes(pct, kontynuacja, label = percent_pl(pct, digits = 0))) +
#'   geom_col(position = position_dodge2(width = 1, reverse = TRUE),
#'            fill = "#90CF60") +
#'   geom_text(position = position_dodge2(width = 1, reverse = TRUE),
#'             size = 6, hjust = -0.2) +
#'   scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
#'   scale_y_discrete(NULL) +
#'   theme_losy()
"wykresKontynuacjeTypSzkOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem form kontynuowania
#' nauki w podziale ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresKontynuacjeTypSzkPlec]
#' @examples
#' wykresKontynuacjeTypSzkPlecOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresKontynuacjeTypSzkPlec +
#'                    scale_fill_losy(NULL, type = "kontynuacje",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 3)))
"wykresKontynuacjeTypSzkPlecOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem form kontynuowania
#' nauki w podziale ze względu na (najczęściej wybierane) zawody wyuczone.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresKontynuacjeTypSzkZawod]
#' @examples
#' wykresKontynuacjeTypSzkZawodOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresKontynuacjeTypSzkZawod +
#'                    scale_fill_losy(NULL, type = "kontynuacje",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 3)))
"wykresKontynuacjeTypSzkZawodOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem wyników matury w podziale
#' ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresMaturyPlec]
#' @examples
#' wykresMaturyPlecOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresMaturyPlec +
#'                    scale_fill_losy(NULL, type = "matura", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "matura",
#'                                         variantOld = TRUE, guide = "none"))
"wykresMaturyPlecOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem wyników matury w podziale
#' ze względu na (najczęściej wybierane) zawody wyuczone
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresMaturyZawod]
#' @examples
#' wykresMaturyZawodOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresMaturyZawod +
#'                    scale_fill_losy(NULL, type = "matura", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "matura",
#'                                         variantOld = TRUE, guide = "none"))
"wykresMaturyZawodOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem płci w podziale ze względu
#' na typ ukończonej szkoły.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresPlec]
#' @examples
#' wykresPlecOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresPlec +
#'                    scale_fill_losy(NULL, type = "plec", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "plec", variantOld = TRUE,
#'                                         guide = "none"))
"wykresPlecOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem części okresu posiadania
#' pracy (w ramach okresu od września do grudnia roku ukończenia szkoły)
#' pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do
#' wykorzystania w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresPracaOkresGrupaOdn]
#' @examples
#' wykresPracaOkresGrupaOdnOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresPracaOkresGrupaOdn +
#'                    scale_fill_losy(NULL, type = "okresPracy",
#'                                    variantOld = TRUE,
#'                                    guide = guide_legend(nrow = 1)) +
#'                    scale_colour_losy_fg(NULL, type = "okresPracy",
#'                                         variantOld = TRUE, guide = "none"))
"wykresPracaOkresGrupaOdnOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem parametrów rozkładu
#' przychodów z pracy (etatowej) pomiędzy daną szkołą a odpowiadającą jej
#' *grupą odniesienia* - do wykorzystania w raportach szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresPrzychodyGrupaOdn]
#' @examples
#' wykresPrzychodyGrupaOdnOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresPrzychodyGrupaOdn +
#'                    scale_fill_losy(NULL, type = "grupaOdn", unname = TRUE,
#'                                    variantOld = TRUE, guide = "none"))
"wykresPrzychodyGrupaOdnOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem statusów
#' edukacyjno-zawodowych ze względu na miesiąc od ukończenia szkoły.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresStatusy]
#' @examples
#' wykresStatusyOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresStatusy +
#'                    scale_fill_losy(NULL, type = "statusy", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "statusy",
#'                                         variantOld = TRUE, guide = "none"))
"wykresStatusyOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem statusów
#' edukacyjno-zawodowych ze względu na płeć.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresStatusyPlec]
#' @examples
#' wykresStatusyPlecOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresStatusyPlec +
#'                    scale_fill_losy(NULL, type = "statusy", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "statusy",
#'                                         variantOld = TRUE, guide = "none"))
"wykresStatusyPlecOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem statusów
#' edukacyjno-zawodowych ze względu na (najczęściej wybierane) zawody wyuczone.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresStatusyZawod]
#' @examples
#' wykresStatusyZawodOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresStatusyZawod +
#'                    scale_fill_losy(NULL, type = "statusy", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "statusy",
#'                                         variantOld = TRUE, guide = "none"))
"wykresStatusyZawodOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem statusów
#' edukacyjno-zawodowych pomiędzy daną szkołą (ew. danym zawodem w danej szkole)
#' a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach
#' szkolnych.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresStatusyGrupaOdn]
#' @examples
#' wykresStatusyGrupaOdnOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresStatusyGrupaOdn +
#'                    scale_fill_losy(NULL, type = "statusy", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "statusy",
#'                                         variantOld = TRUE, guide = "none"))
"wykresStatusyGrupaOdnOld"
#' @title Przykladowe wykresy - stare palety kolorow
#' @description Wykres z przykładowym zestawieniem typów ukończonych szkół.
#' @format Wykres *[ggplot2][ggplot2::ggplot]*.
#' @seealso [wykresTypySzkol]
#' @examples
#' wykresTypySzkolOld
#'
#' # kod tworzący ten wykres:
#' library(ggplot2)
#' suppressMessages(wykresTypySzkol +
#'                    scale_fill_losy(NULL, type = "typySzkol", variantOld = TRUE,
#'                                    guide = guide_legend(ncol = 2)) +
#'                    scale_colour_losy_fg(NULL, type = "typySzkol",
#'                                         variantOld = TRUE, guide = "none"))
"wykresTypySzkolOld"
