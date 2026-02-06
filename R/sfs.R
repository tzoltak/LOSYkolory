#' @title Geometrie do kartogramow - wojewodztwa
#' @description Obiekt klasy *sf* zawierający geometrie do rysowania kartogramów
#' na poziomie województw. Współrzędne zapisane są w układzie WGS 84, tzn. jako
#' stopnie długości i szerokości geograficznej.
#' @format Obiekt klasy *sf*: ramka danych z 17 wierszami i 31 kolumnami. Do
#' łączenia z wynikami mogą zostać łatwo wykorzystane kolumny:
#' \itemize{
#'   \item{`teryt_woj` - kody (1/2-cyfrowe) TERYT województw; zawiera też wiersz z brakiem danych, przeznaczony do opisania, że województwo jest nieznane,}
#'   \item{`nazwa_woj` - nazwy województw (małymi literami); zawiera też dodatkowo województwo opisane jako *nieznane*.}
#' }
#' @seealso [daneMigracjeWoj], [zlacz_z_mapa()], [wykresMigracjeWoj], [sfPow]
"sfWoj"
#' @title Geometrie do kartogramow - powiaty
#' @description Obiekt klasy *sf* zawierający geometrie do rysowania kartogramów
#' na poziomie powiatów. Współrzędne zapisane są w układzie WGS 84, tzn. jako
#' stopnie długości i szerokości geograficznej.
#' @format Obiekt klasy *sf*: ramka danych z 381 wierszami i 31 kolumnami.
#'
#' Do łączenia z wynikami może zostać łatwo wykorzystana kolumna `teryt_pow`,
#' która zawiera kody (3/4-cyfrowe) TERYT powiatów (oraz wiersz z brakiem
#' danych, przeznaczony do opisania, że powiat jest nieznany).
#'
#' Zawiera też kolumnę `nazwa_pow` z nazwami powiatów (małymi literami, bez
#' poprzedzającego *powiat*), ale akurat po niej (samej) łączyć danych **nie**
#' należy, bo jej wartości nie są unikalne (jest w Polsce kilka par powiatów,
#' które nazywają się tak samo); powiat z brakiem danych w zmiennej `teryt_pow`
#' ma tu przypisaną wartość *nieznany*.
#' @seealso [zlacz_z_mapa()], [sfWoj]
"sfPow"
