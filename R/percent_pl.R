#' @title Formatowanie procentow
#' @description
#' `label_percent_pl()` wywołuje [scales::label_percent()] z zestawem argumentów
#'  odpowiadających polskiej ortografii, dając też bardziej typowy sposób
#'  wskazywania pożądanego zaokrąglenia i możliwość *ukrywania* wartości poniżej
#'  zadanego progu;  jest przeznaczona przede wszystkim do używania w ramach
#'  wywołań funkcji `scale_(...)()`, poprzez przekazanie
#'  **wyniku jej wywołania** do argumentu `labels`.
#'
#'  `percent_pl()` stanowi wygodny sposób na uniknięcie konieczności stosowania
#'  dziwacznej na pierwszy rzut oka składni `label_percent_pl()(wektor_liczb)`,
#'  dzięki czemu można jej wygodnie używać np. definiując przypisanie wartości
#'  do elementu `label` wykresu w ramach wywołania [ggplot2::aes()].
#' @param x wektor liczb, które mają zostać sformatowane
#' @param digits liczba miejsc po przecinku, do której mają zostać zaokrąglone
#' wartości procentowe
#' @param hideBelow opcjonalnie wartość liczbowa: wartości poniżej tego progu
#' będą przez zwracaną funkcję *ukrywane* (zamieniane na pusty ciąg znaków)
#' @param ... argumenty przekazywane dalej do [scales::label_percent()]
#' (z wyjątkiem ew. argumentów `decimal.mark` i `big.mark`, których wartość
#' jest ustawiana na sztywno odpowiednio na ',' i ' ')
#' @returns funkcja, p. [scales::label_percent()]
#' @examples
#' pct <- c(0, seq(0.015, 0.045, by = 0.01), seq(0.2, 1, by = 0.2))
#'
#' percent_pl(pct)
#' percent_pl(pct, digits = 0)
#' percent_pl(pct, digits = 0, hideBelow = 0.05)
#'
#' # dla porównania:
#' scales::percent(pct)
#' scales::percent(pct, decimal.mark = ",")
#' scales::percent(pct, accuracy = 1)
#'
#' # label_percent_pl()
#' label_percent_pl()(pct)
#' label_percent_pl(digits = 0, hideBelow = 0.05)(pct)
#' # typowo do użycia przy formatowaniu etykiet osi wykresu (tu: poziomej):
#' library(ggplot2)
#' ggplot(daneTypySzkol,
#'        aes(pct, factor(rok_abs), fill = typ_szk)) +
#'   geom_col(position = position_stack(reverse = TRUE)) +
#'   scale_x_continuous(NULL, breaks = seq(0, 1, length.out = 9),
#'                      labels = label_percent_pl(digits = 1))
#' @seealso [zmien_prog_pokazywania_etykiet()],
#' [wykresBezrobocie], [wykresBezrobocieOkresGrupaOdn], [wykresBezrobociePlec],
#' [wykresBezrobocieZawod],
#' [wykresDyplomyPlec], [wykresDyplomyZawod],
#' [wykresFormyZatrudnGrupaOdn], [wykresKontMlodocPracEduGrupaOdn],
#' [wykresKontMlodocPracNeduGrupaOdn],
#' [wykresKontynuacjeDziedzinyPlec], [wykresKontynuacjeDyscyplinyPlec],
#' [wykresKontynuacjeTypSzk], [wykresKontynuacjeTypSzkPlec],
#' [wykresKontynuacjeTypSzkZawod],
#' [wykresMaturyPlec], [wykresMaturyZawod],
#' [wykresPlec], [wykresPracaOkresGrupaOdn], [wykresPrzychodyGrupaOdn],
#' [wykresStatusy], [wykresStatusyPlec], [wykresStatusyZawod],
#' [wykresStatusyGrupaOdn], [wykresTypySzkol]
#' @importFrom scales label_percent
#' @export
label_percent_pl <- function(digits = NULL, hideBelow = 0, ...) {
  if (!is.null(digits)) {
    stopifnot(is.numeric(digits), !anyNA(digits), all(is.finite(digits)))
    if (length(digits) != 1) {
      stop("Argument `digits` musi być pojedynczą liczbą.",
           ifelse(grepl("^labels\\(", deparse(sys.call())),
                  "\nProblem prawdopodobnie wynika z tego, że wewnątrz wywołania funkcji `scale_(...)` podając wartość argumentu `labels` użyłeś/aś wywołania:\n`labels = label_percent_pl`\nzamiast:\n`labels = label_percent_pl()`.",
                  ""))
    }
    digits <- 10^(-digits)
  }
  stopifnot(is.numeric(hideBelow), length(hideBelow) == 1L, !anyNA(hideBelow))
  fun <- label_percent(accuracy = digits, big.mark = " ", decimal.mark = ",",
                       ...)
  wraper <- function(x) {
    pct <- fun(x)
    return(ifelse(abs(x) < hideBelow, "", pct))
  }
  return(wraper)
}
#' @rdname label_percent_pl
#' @export
percent_pl <- function(x, digits = NULL, hideBelow = 0, ...) {
  return(label_percent_pl(digits = digits, hideBelow = hideBelow, ...)(x))
}
