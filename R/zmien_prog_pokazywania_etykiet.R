#' @title Modyfikowanie elementow wykresu
#' @description
#' Zmienia próg wartości, poniżej którego ukrywane są na wykresie etykiety
#' wartości (*label*).
#' @param g wykres *[ggplot2][ggplot2::ggplot]*
#' @param hideBelow opcjonalnie wartość liczbowa: wartości etykiet (*label*)
#'  poniżej tego progu będą na wykresie ukrywane (p. opis szczegółowy poniżej)
#' @param label opcjonalnie wyrażenie (*expression*), które zostanie przypisane
#' do *mapowań* `label` we wszystkich *warstwach* wykresu (p. opis szczegółowy
#' poniżej) **otoczone wywołaniem funkcji [quote()]** (p. przykłady użycia)
#' @details
#' W wywołaniu funkcji można podać wartość tylko argumentu `hideBelow` albo
#' tylko argumentu `label`.
#'
#' Wywołania z podanym argumentem `hideBelow` **ma sens tylko wtedy**, kiedy
#' przy tworzeniu modyfikowanego właśnie wykresu do zdefiniowania *mapowań*
#' *estetyki* `label` zostały użyte wywołania funkcji [percent_pl()] (lub ew.
#' [label_percent_pl()]) - w tym trybie funkcja poszukuje argumentów `hideBelow`
#' w wyrażeniach przypisanych do *estetyki* `label` i zmienia przekazywaną nimi
#' wartość na podaną, ale jeśli takich argumentów nie znajdzie, to niczego nie
#' zmieni! (istnieją też inne ograniczenia - p. [zmien_hideBelow()])
#'
#' Wywołanie z podanym argumentem `label` jest bardziej elastyczne i pozwala
#' przypisać do *mapowania* *estetyki* `label` całe podane wyrażenie.
#' Ograniczenie stanowi tu z jednej strony to, że będzie ono takie samo dla
#' wszystkich takich przypisań (co jednak w kontekście monitoringu karier co do
#' zasady nie powinno być problemem), a z drugiej strony, że użytkownik sam musi
#' się upewnić, czy podawana w wyrażeniu zmienna istnieje w danych danego
#' wykresu. W celu osiągnięcia efektu ukrycia etykiet poniżej pewnego progu
#' typowo argumentem `label` podawane będzie wyrażenie typu:
#' `percent_pl(pct, digits = pozadanaDokladnosc, hideBelow = pozadanyProg)`,
#' w którym zamiast `pozadanaDokladnosc` i `pozadanyProg` wpisane zostaną
#' konkretne liczby.
#' @returns wykres *[ggplot2][ggplot2::ggplot]*
#' @seealso [percent_pl()], [zmien_wielkosc_czcionek()],
#' [zmien_wielkosc_etykiet()], [zmien_rodzine_czcionek()]
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
#' zmien_prog_pokazywania_etykiet(p, hideBelow = 0.1)
#' # argument `label` daje nieco więcej elastyczności,
#' # ale wymaga otoczenie podanego wyrażenia wywołaniem funkcji `quote()`:
#' zmien_prog_pokazywania_etykiet(p, label = quote(percent_pl(pct, digits = 1,
#'                                                            hideBelow = 0.1)))
#' # uwaga, korzystając z argumentu `label` można też całkiem zmienić
#' # przypisanie do estetyk label:
#' zmien_prog_pokazywania_etykiet(p, label = quote(typ_szk))
#' @importFrom ggplot2 ggproto
#' @export
zmien_prog_pokazywania_etykiet <- function(g, hideBelow = NULL, label = NULL) {
  stopifnot(inherits(g, "gg"),
            !is.null(hideBelow) | !is.null(label),
            is.null(hideBelow) | is.null(label))
  if (!is.null(hideBelow)) {
    stopifnot(is.numeric(hideBelow), length(hideBelow) == 1L, !anyNA(hideBelow))
    if ("label" %in% names(g$mapping)) {
      g$mapping$label <- zmien_hideBelow(g$mapping$label, hideBelow)
    }
    g$layers <- lapply(g$layers,
                       function(x, hideBelow) {
                         if ("label" %in% names(x$mapping)) {
                           # to jest sztuczka pozwalając obejść bardzo specyficzne zachowania
                           # obiektów typu ggproto, a konkretnie utworzyć kopię istniejącej
                           # warstwy, która nie będzie w żaden sposób powiązana z obiektem
                           # na podobieństwo którego jest tworzona
                           x <- do.call("ggproto", as.list(x))
                           x$mapping$label <-
                             zmien_hideBelow(x$mapping$label, hideBelow)
                         }
                         return(x)
                       }, hideBelow = hideBelow)
  } else {
    stopifnot(is.language(label))
    g$mapping$label <- label
    g$layers <- lapply(g$layers,
                       function(x, label) {
                         if ("label" %in% names(x$mapping)) {
                           # to jest sztuczka pozwalając obejść bardzo specyficzne zachowania
                           # obiektów typu ggproto, a konkretnie utworzyć kopię istniejącej
                           # warstwy, która nie będzie w żaden sposób powiązana z obiektem
                           # na podobieństwo którego jest tworzona
                           x <- do.call("ggproto", as.list(x))
                           x$mapping$label <- label
                         }
                         return(x)
                       }, label = label)
  }
  return(g)
}
#' @title Modyfikowanie elementow wykresu
#' @description
#' Nieeksportowana funkcja wykorzystywana wewnętrznie przez
#' [zmien_prog_pokazywania_etykiet()], modyfikuje wartości przypisane do
#' argumentów `hideBelow` w podanym wyrażeniu.
#' @param x wyrażenie (*expression*)
#' @param zmiana nowa wartość, która ma być przypisana napotkanym w `x`
#' przypisaniem wartości argumentu `hideBelow`
#' @details
#' Funkcja działa w sposób dosyć prostacki, zamieniając podane wyrażenie na
#' ciąg znaków i modyfikując je przy pomocy wyrażenia regularnego. Używane
#' wyrażenie regularne zakłada, że:
#'
#' -  w zmienianym przypisaniu argumentem `hideBelow` przekazywana była
#'    pojedyncza, nieujemna i skończona wartość liczbowa (w zapisie dziesiętnym),
#' -  wszystkie takie napotkane przypisania wartości do nazwy *hideBelow*
#'    opisują przekazywanie wartości argumentu do funkcji.
#'
#' **Założenia te** dobrze pasują do sytuacji, gdy modyfikowane są szablony
#' wykresów zawarte w tym pakiecie ([wykresBezrobociePlec],
#' [wykresBezrobocieZawod], [wykresDyplomyPlec], [wykresDyplomyZawod],
#' [wykresFormyZatrudnGrupaOdn], [wykresKontMlodocPracEduGrupaOdn],
#' [wykresKontMlodocPracNeduGrupaOdn], [wykresMaturyPlec], [wykresMaturyZawod],
#' [wykresPlec], [wykresPracaOkresGrupaOdn],  [wykresStatusy],
#' [wykresStatusyPlec], [wykresStatusyZawod], [wykresStatusyGrupaOdn],
#' [wykresTypySzkol]), ale **w ogólności mogą się nie sprawdzać**.
#' @returns zmodyfikowane wyrażenie
zmien_hideBelow <- function(x, zmiana) {
  d <- deparse(x)
  if (grepl("percent_pl|label_percent_pl", d)) {
    d <- gsub("hideBelow *= *[[:digit:].]+", paste("hideBelow =", zmiana),
              sub("^~", "", d))
    return(eval(parse(text = paste0("quote(", d, ")")), envir = globalenv()))
  } else {
    return(x)
  }
}
