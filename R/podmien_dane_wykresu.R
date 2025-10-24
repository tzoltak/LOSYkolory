#' @title Podmiana danych wykresu
#' @description
#' Funkcja pozwala podjąć próbę podmiany danych w wykresie *ggplot2*, obsługując
#' przy tym sytuację, gdy struktura danych nie pasuje do wymagań wykresu.
#' @param g wykres *[ggplot2][ggplot2::ggplot]*
#' @param dane dane - jeśli operacja podmiany ma się udać, musi to być ramka
#' danych o strukturze takiej samej, jak dane już zawarte w wykresie przekazanym
#' argumentem `g`
#' @param jesliRozne ciąg znaków (domyślnie "NULL") wskazujący, jak ma się
#' zachować funkcja, jeśli obiekt przekazany argumentem `dane` ma strukturę nie
#' pasującą do wymagań wykresu przekazanego argumentem `g`: "NULL" - zwrócić
#' `NULL`, "porownanie" - zwrócić wynik porównania obiektu przekazanego
#' argumentem `dane` z danymi zawartymi w wykresie, "stop" - wygenerować błąd
#' @details
#' Do porównania ze sobą struktury danych w wykresie i podmienianych danych
#' używana jest funkcja [porownaj_strukture_danych()].
#'
#' Należy zwrócić uwagę, że ponieważ funkcja `podmien_dane_wykresu()` (wywołana
#' z domyślną wartością argumentu `jesliRozne`) może zwrócić wykres
#' *[ggplot2][ggplot2::ggplot]*, ale może też zwrócić `NULL`, więc wszelkie ew.
#' zmiany formatu wykresu dokonywane poprzez wywołania funkcji (np.
#' [zmien_wielkosc_czcionek()], [zmien_prog_pokazywania_etykiet()],
#' [zmien_rok_w_podpisie()], czy [theme_losy()] - tej ostatniej w składni z `+`)
#' należy dokonać przed jej wywołaniem (por. przykłady użycia poniżej).
#' @returns obiekt klasy [ggplot2::ggplot] lub `NULL` lub wektor ciągów znaków
#' @seealso [porownaj_strukture_danych()]
#' @examples
#' library(ggplot2)
#' podmien_dane_wykresu(wykresStatusy, daneStatusy)
#' # poniższe wywołanie zwróci NULL
#' podmien_dane_wykresu(wykresStatusy, daneStatusy[, -1])
#' # jeśli wykres ma być w jakiś sposób modyfikowany, to należy to zrobić
#' # przed wywołaniem podmien_dane_wykresu():
#' wykresStatusy |>
#'   zmien_wielkosc_czcionek(baseSize = 14) |>
#'   zmien_prog_pokazywania_etykiet(hideBelow = 0.04) |>
#'   zmien_rok_w_podpisie(2025) |>
#'   podmien_dane_wykresu(daneStatusy[, -1])
#' # można też się dowiedzieć, na czym polega rozbieżność struktury danych:
#' podmien_dane_wykresu(wykresStatusy, daneStatusy[, -1], jesliRozne = "porownanie")
#' @importFrom ggplot2 %+%
#' @export
podmien_dane_wykresu <- function(g, dane, jesliRozne = c("NULL", "porownanie",
                                                         "stop")) {
  jesliRozne <- match.arg(jesliRozne, several.ok = FALSE)
  stopifnot(inherits(g, "ggplot2::ggplot"))

  strukturyDanych <- vector(mode = "list", length = 1L + length(g@layers))
  if (is.data.frame(g@data)) {
    strukturyDanych[[1]] <- g@data[vector(mode = "integer", length = 0L), ,
                                   drop = FALSE]
  }
  for (l in seq_along(g@layers)) {
    if (is.data.frame(g@layers[[l]]$data)) {
      strukturyDanych[[l + 1L]] <-
        g@layers[[l]]$data[vector(mode = "integer", length = 0L), ,
                           drop = FALSE]
    }
  }
  strukturyDanych <- strukturyDanych[!sapply(strukturyDanych, is.null)]
  stopifnot("Wykres zawiera kilka różnych zbiorów danych" =
              all(sapply(strukturyDanych[-1],
                         all.equal, strukturyDanych[[1]]) %in% TRUE))
  porownanie <-
    porownaj_strukture_danych(strukturyDanych[[1]],
                              dane[vector(mode = "integer", length = 0L), ,
                                   drop = FALSE])
  if (!(porownanie[1] %in% TRUE)) {
    if (jesliRozne == "stop") {
      stop("Przekazane dane mają inną strukturę, niż dane wewnątrz wykresu.")
    } else if (jesliRozne == "porownanie") {
      return(porownanie)
    } else {
      return(NULL)
    }
  } else {
    g <- g + dane
  }
  return(g)
}
