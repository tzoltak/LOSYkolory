#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości uzyskiwania dyplomów
#' w podziale ze względu na płeć.
#' @format Ramka danych z 12 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Ogółem*, *Mężczyźni*, *Kobiety*,}
#'   \item{`dyplom` - czynnik o poziomach *Świadectwo czeladnicze*, *Dyplom zawodowy*, *Tylko certyfikat kwalifikacji*, *Brak certyfikatów i dyplomu*}
#'   \item{`pct` - częstość uzyskiwanie dyplomów w ramach danej płci (lub ogółem).}
#' }
#' @seealso [wykresDyplomy]
"daneDyplomy"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości dziedzin kontynuowania nauki
#' na studiach w podziale ze względu na płeć.
#' @format Ramka danych z 24 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Ogółem*, *Mężczyźni*, *Kobiety*,}
#'   \item{`dziedzina` - czynnik o ośmiu poziomach,}
#'   \item{`pct` - częstość wyboru danej dziedziny w ramach danej płci (lub ogółem).}
#' }
#' @seealso [wykresKontynuacjeDziedziny]
"daneKontynuacjeDziedziny"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości typu kontynuowania nauki
#' w podziale ze względu na płeć.
#' @format Ramka danych z 9 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Ogółem*, *Mężczyźni*, *Kobiety*,}
#'   \item{`kontynuacja` - czynnik o poziomach *w szkole policealnej*, *w ramach KKZ*, *na studiach*,}
#'   \item{`pct` - częstość wyboru danego typu kształcenia w ramach danej płci (lub ogółem).}
#' }
#' @seealso [wykresKontynuacjeTypSzk
"daneKontynuacjeTypSzk"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie wyników matury w podziale ze względu na
#' wyuczony zawód.
#' @format Ramka danych z 20 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`zawod` - czynnik o dziesięciu poziomach,}
#'   \item{`kontynuacja` - czynnik o poziomach *Uzyskanie świadectwa dojrzałości*, *Brak świadectwa dojrzałości*,}
#'   \item{`pct` - częstość danego wyniku matury w ramach danego zawodu.}
#' }
#' @seealso [wykresMatury]
"daneMatury"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie płci w podziale ze względu na typ
#' ukończonej szkoły.
#' @format Ramka danych z 14 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`typ_szk` - czynnik o siedmiu poziomach,}
#'   \item{`plec` - czynnik o poziomach *Mężczyźni*, *Kobiety*,}
#'   \item{`pct` - częstość danej płci w ramach danego typu szkoły.}
#' }
#' @seealso [wykresPlec]
"danePlec"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie statusów edukacyjno-zawodowych ze
#' względu na miesiąc od ukończenia szkoły.
#' @format Ramka danych ze 105 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`miesiac` - czynnik o dwudziestu jeden poziomach,}
#'   \item{`status` - czynnik o poziomach *Tylko nauka*, *Nauka i praca*, *Tylko praca*, *Bezrobocie*, *Brak danych o aktywności*,}
#'   \item{`pct` - częstość danego statusu w ramach danego miesiąca od ukończenia szkoły.}
#' }
#' @seealso [wykresStatusy]
"daneStatusy"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie statusów edukacyjno-zawodowych ze
#' względu na płeć.
#' @format Ramka danych z 10 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Mężczyźni*, *Kobiety*,}
#'   \item{`status` - czynnik o poziomach *Tylko nauka*, *Nauka i praca*, *Tylko praca*, *Bezrobocie*, *Brak danych o aktywności*,}
#'   \item{`pct` - częstość danego statusu w ramach danej płci.}
#' }
#' @seealso [wykresStatusyPlec]
"daneStatusyPlec"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie typów ukończonych szkół.
#' @format Ramka danych z 7 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`rok_abs` - rok ukończenia szkoły (liczba),}
#'   \item{`typ_szk` - czynnik o siedmiu poziomach,}
#'   \item{`pct` - częstość danego typu szkoły.}
#' }
#' @seealso [wykresTypySzkol]
"daneTypySzkol"
