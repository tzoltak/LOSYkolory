#' @title Geometrie do kartogramow - wojewodztwa
#' @description Obiekt klasy *sf* zawierający geometrie do rysowania kartogramów
#' na poziomie województw.
#' @format Obiekt klasy *sf*: ramka danych z 20 wierszami i 37 kolumnami. Do
#' łączenia z wynikami mogą zostać łatwo wykorzystane kolumny:
#' \itemize{
#'   \item{`teryt_woj` - kody (1/2-cyforwe) TERYT województw; zawiera też wiersz z brakiem danych, przeznaczony do opisania, że województwo jest nieznane,}
#'   \item{`nazwa_woj` - nazwy województw (małymi literami); zawiera też dodatkowo województwo opisane jako *nieznane*.}
#' }
#' @seealso [daneMigracjeWoj], [zlacz_z_mapa()], [wykresMigracjeWoj]
"sfWoj"
