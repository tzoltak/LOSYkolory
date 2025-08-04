#' @title Przygotowanie danych do kartogramow
#' @description
#' Funkcja przyłącza dane opisujące wskaźniki obliczone na poziomie województw
#' do obiektu klasy [sf::sf] zawierającego mapę, która ma zostać użyta do
#' narysowania kartogramu.
#' @param dane ramka danych z danymi do połączenia; co do zasady powinna
#' zawierać kolumny `teryt_woj` (TERYT województwa w formacie 1/2-cyfrowym) lub
#' `nazwa_woj` (ciągi znajów z nazwami województw)
#' @param sf opcjonalnie ciąg znaków z nazwą obiektu [sf::sf], z którym dane
#' mają zostać połączone - obecnie jedyną akceptowaną wartością jest "sfWoj"
#' @param allSf opcjonalnie wartość logiczna - czy w połączonych danych mają
#' znaleźć się wszystkie województwa (w tym *nieznane województwo*), nawet jeśli
#' niektóre z nich nie występują w danych przekazanych do połączenia?
#' @details
#' Obiekt [sfWoj] zawiera również rekord opisujący *nieznane* województwo - jest
#' on opisywany przez wartość kolumny `taryt_woj` równą `NA_integer_` i wartość
#' kolumny `nazwa_woj` równą `"nieznane"`. Można w ten sposób zwizualizować na
#' kartogramie rówież wartość wskaźnika odnoszącą się do tych absolwentów, dla
#' których nie jest znana ich lokalizacja (miejsce zamieszkania, studiowania
#' itp.).
#' @returns obiekt klasy [sf::sf]
#' @examples
#' zlacz_z_mapa(daneMigracjeWoj)
#' @seealso [wykresMigracjeWoj]
#' @importFrom utils data
#' @export
zlacz_z_mapa <- function(dane, sf = "sfWoj", allSf = FALSE) {
  if (!requireNamespace("sf", quietly = TRUE)) {
    stop("Musisz mieć zainstalowany pakiet 'sf', aby móc rysować kartogramy.")
  }
  sf <- match.arg(sf, several.ok = FALSE)
  sfObiekt <- get0(sf, ifnotfound = NULL)
  # obsługa wywołań następujących bez wcześniejszego załadowania pakietu LOSYkolory
  if (is.null(sfObiekt)) {
    data("sfs", package = "LOSYkolory", envir = environment())
    sfObiekt <- get(sf)
  }
  stopifnot(is.logical(allSf), length(allSf) == 1L, allSf %in% c(TRUE, FALSE))
  wspolneKolumny <- intersect(names(dane), names(sfObiekt))
  stopifnot(is.data.frame(dane),
            "Dane muszą mieć co najmniej (i najlepiej dokładnie) jedną kolumnę wspólną z obiektem sf, z którym mają być połączone." =
              length(wspolneKolumny) > 0L)
  for (k in wspolneKolumny) {
    if (is.factor(dane[[k]])) {
      stopifnot(is.factor(dane[[k]]) == is.factor(sfObiekt[[k]]),
                all(levels(dane[[k]]) %in% levels(sfObiekt[[k]])))
    } else {
      stopifnot(mode(dane[[k]]) == mode(sfObiekt[[k]]),
                all(dane[[k]] %in% sfObiekt[[k]]))
    }
  }
  stopifnot(!any(duplicated(dane[, wspolneKolumny])),
            !any(duplicated(sfObiekt[, wspolneKolumny])))
  if (any(!(wspolneKolumny %in% c("teryt_woj", "nazwa_woj")))) {
    message("Łączenie z wykorzystaniem kolumn innych niż `teryt_woj` lub `nazwa_woj` nie jest zalecane. Sprawdź uważnie wyniki łączenia.")
  }
  return(merge(sfObiekt, dane, all.x = allSf))
}
