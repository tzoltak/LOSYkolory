#' @title Podmiana danych wykresu
#' @description
#' Funkcja porównuje ze sobą strukturę dwóch obiektów (typowo ramek danych)
#' i raportuje ewentualne rozbieżności (jest przy tym znacznie mniej
#' restrykcyjna w porównaniach, niż [all.equal()]).
#' @param x wzorcowy obiekt
#' @param y obiekt do porównania z `x`
#' @details
#' Funkcja przeprowadza tylko cztery testy zgodności, adekwatne w kontekście
#' ustalania, czy na podstawie danych z obiektu `y` da się narysować wykres,
#' który został utworzony na podstawie danych z obiektu `x`:
#' -    Jeśli `x` jest ramką danych (lub obiektem *ramkodanowym*, jak np.
#'      *tibble*), to czy `y` również jest ramką danych (obiektem
#'      *ramkodanowym*),
#' -    Czy wszystkie elementy (identyfikowane po ich nazwach - zwykle kolumny)
#'      z `x` występują w `y`,
#' -    Czy wszystkie elementy (identyfikowane po ich nazwach - zwykle kolumny),
#'      które w `x` są wektorami liczbowymi lub logicznymi są również wektorami
#'      liczbowymi lub logicznymi w `y`,
#' -    Czy wszystkie elementy (identyfikowane po ich nazwach - zwykle kolumny),
#'      które w `x` są wektorami tekstowymi lub czynnikami są również wektorami
#'      liczbowymi lub czynnikami w `y`.
#' @returns `TRUE` lub wektor tekstowy z opisem różnic (por. [all.equal()])
#' @seealso [podmien_dane_wykresu()]
#' @examples
#' df1 <- data.frame(a = 1:5, b = letters[1:5], c = factor(1:5),
#'                   d = sample(c(FALSE, TRUE), 5, replace = TRUE),
#'                   e = 1L:5L)
#' df2 <- data.frame(b = 1:5, a = letters[1:5], d = factor(1:5),
#'                   c = sample(c(FALSE, TRUE), 5, replace = TRUE))
#' porownaj_strukture_danych(df1, df1)
#' porownaj_strukture_danych(df1, df2)
#' @export
porownaj_strukture_danych <- function(x, y) {
  porownania <- c(
    "Obiekt `x` jest ramką danych, ale obiekt `y` nią nie jest." =
      ifelse(inherits(x, "data.frame"), !inherits(y, "data.frame"), FALSE),
    "Obiekt `x` zawiera elementy (kolumny), które nie występują w obiekcie `y`." =
      !all(names(x) %in% names(y)),
    "W obiekcie `x` występują elementy (kolumny) będące wektorami liczbowymi lub logicznymi, które nie są wektorami liczbowymi lub logicznymi (lub w ogóle nie występują) w obiekcie `y`." =
      !all(names(x)[sapply(x, is.numeric) | sapply(x, is.logical)] %in%
             names(y)[sapply(y, is.numeric) | sapply(y, is.logical)]),
    "W obiekcie `x` występują elementy (kolumny) będące wektorami tekstowymi lub czynnikami, które nie są wektorami tekstowymi lub czynnikami (lub w ogóle nie występują) w obiekcie `y`." =
      !all(names(x)[sapply(x, is.character) | sapply(x, is.factor)] %in%
             names(y)[sapply(y, is.character) | sapply(y, is.factor)])
  )
  if (all(!porownania)) {
    return(TRUE)
  } else {
    return(names(porownania)[porownania])
  }
}
