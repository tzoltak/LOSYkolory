#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości bycia zarejestrowanym jako
#' bezrobotny ze względu na miesiąc od ukończenia szkoły.
#' @format Ramka danych z 21 wierszami i 2 kolumnami:
#' \itemize{
#'   \item{`miesiac` - czynnik o dwudziestu jeden poziomach,}
#'   \item{`bezrobocie` - odsetek absolwentów zarejestrowanych jako bezrobotni.}
#' }
#' @seealso [wykresBezrobocie]
"daneBezrobocie"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości łącznej długości okresu bycia
#' zarejestrowanym jako bezrobotny (w okresie od września do grudnia roku
#' ukończenia szkoły) pomiędzy daną szkołą a odpowiadającą jej
#' *grupą odniesienia* - do wykorzystania w raportach szkolnych.
#' @format Ramka danych z 10 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`grupa` - czynnik o wartościach *Państwa szkoła* i *Pozostałe \[typ szkoły] z \[JST stanowiąca grupę odniesienia]*,}
#'   \item{`okres_bezrobocia` - czynnik o poziomach *Brak bezrobocia*, *1 miesiąc*, *2 miesiące*, *3 miesiące*, *4 miesiące*,}
#'   \item{`pct` - częstość danej długości okresu bezrobocia w ramach danej grupy.}
#' }
#' @seealso [wykresBezrobocieOkresGrupaOdn]
"daneBezrobocieOkresGrupaOdn"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości bycia zarejestrowanym jako
#' bezrobotny w podziale ze względu na płeć.
#' @format Ramka danych z 4 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Mężczyźni*, *Kobiety*,}
#'   \item{`bezrobocie` - czynnik o poziomach *Zarejestrowany jako bezrobotny*, *Brak statusu bezrobotnego*,}
#'   \item{`pct` - częstość danego statusu bezrobocia w ramach danej płci.}
#' }
#' @seealso [wykresBezrobociePlec]
"daneBezrobociePlec"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości bycia zarejestrowanym jako
#' bezrobotny w podziale ze względu na (najczęściej wybierane) zawody wyuczone.
#' @format Ramka danych z 20 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`nazwa_zaw` - czynnik z nazwami zawodów, kolejność poziomów którego odzwierciedla liczbę absolwentów w danym zawodzie,}
#'   \item{`bezrobocie` - czynnik o poziomach *Zarejestrowany jako bezrobotny*, *Brak statusu bezrobotnego*,}
#'   \item{`pct` - częstość danego statusu bezrobocia w ramach danego zawodu.}
#' }
#' @seealso [wykresBezrobocieZawod]
"daneBezrobocieZawod"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości uzyskiwania dyplomów
#' w podziale ze względu na płeć.
#' @format Ramka danych z 12 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Ogółem*, *Mężczyźni*, *Kobiety*,}
#'   \item{`dyplom` - czynnik o poziomach *Świadectwo czeladnicze*, *Dyplom zawodowy*, *Tylko certyfikat kwalifikacji*, *Brak certyfikatów i dyplomu*,}
#'   \item{`pct` - częstość uzyskiwanie dyplomów w ramach danej płci (lub ogółem).}
#' }
#' @seealso [wykresDyplomyPlec]
"daneDyplomyPlec"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości uzyskiwania dyplomów
#' w podziale ze względu na (najczęściej wybierane) zawody wyuczone.
#' @format Ramka danych z 40 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`nazwa_zaw` - czynnik z nazwami zawodów, kolejność poziomów którego odzwierciedla liczbę absolwentów w danym zawodzie,}
#'   \item{`dyplom` - czynnik o poziomach *Świadectwo czeladnicze*, *Dyplom zawodowy*, *Tylko certyfikat kwalifikacji*, *Brak certyfikatów i dyplomu*,}
#'   \item{`pct` - częstość uzyskiwanie dyplomów w ramach danego zawodu.}
#' }
#' @seealso [wykresDyplomyZawod]
"daneDyplomyZawod"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie formy zatrudnienia pomiędzy daną
#' szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach
#' szkolnych.
#' @format Ramka danych z 8 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`grupa` - czynnik o wartościach *Państwa szkoła* i *Pozostałe \[typ szkoły] z \[JST stanowiąca grupę odniesienia]*,}
#'   \item{`forma_zatrudn` - czynnik o poziomach *Tylko samozatrudnieni*, *Tylko zatrudnieni na podstawie innej formy umowy niż umowa o pracę*, *Zatrudnieni na podstawie więcej niż jednej formy umowy*, *Zatrudnieni tylko na podstawie umowy o pracę*,}
#'   \item{`pct` - częstośc danej formy zatrudnienia w ramach danej grupy.}
#' }
#' @seealso [wykresFormyZatrudnGrupaOdn]
"daneFormyZatrudnGrupaOdn"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości kontynuowania pracy u tego
#' samego pracodawcy, u którego absolwent był młodocianym pracownikiem, wśród
#' absolwentów kontynuujących naukę pomiędzy daną szkołą a odpowiadającą jej
#' *grupą odniesienia* - do wykorzystania w raportach szkolnych.
#' @format Ramka danych z 6 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`grupa` - czynnik o wartościach *Państwa szkoła* i *Pozostałe \[typ szkoły] z \[JST stanowiąca grupę odniesienia]*,}
#'   \item{`kont_mlodoc_prac` - czynnik o wartościach *Uczący się, kontynuujący pracę u danego praodawcy na podstawie umowy o pracę*, *Uczący się, kontynuujący pracę u danego pracodawcy w formie innej niż umowa o pracę*, *Uczący się, niekontynuujący pracy u danego pracodawcy*,}
#'   \item{`pct` - częstość danej sytuacji w ramach grupy.}
#' }
#' @seealso [wykresKontMlodocPracEduGrupaOdn]
"daneKontMlodocPracEduGrupaOdn"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości kontynuowania pracy u tego
#' samego pracodawcy, u którego absolwent był młodocianym pracownikiem, wśród
#' absolwentów nie kontynuujących nauki pomiędzy daną szkołą a odpowiadającą jej
#' *grupą odniesienia* - do wykorzystania w raportach szkolnych.
#' @format Ramka danych z 6 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`grupa` - czynnik o wartościach *Państwa szkoła* i *Pozostałe \[typ szkoły] z \[JST stanowiąca grupę odniesienia]*,}
#'   \item{`kont_mlodoc_prac` - czynnik o wartościach *Nieuczący się, kontynuujący pracę u danego praodawcy na podstawie umowy o pracę*, *Nieuczący się, kontynuujący pracę u danego pracodawcy w formie innej niż umowa o pracę*, *Nieuczący się, niekontynuujący pracy u danego pracodawcy*,}
#'   \item{`pct` - częstość danej sytuacji w ramach grupy.}
#' }
#' @seealso [wykresKontMlodocPracNeduGrupaOdn]
"daneKontMlodocPracNeduGrupaOdn"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości dziedzin kontynuowania nauki
#' na studiach w podziale ze względu na płeć.
#' @format Ramka danych z 24 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Ogółem*, *Mężczyźni*, *Kobiety*,}
#'   \item{`dziedzina` - czynnik o ośmiu poziomach,}
#'   \item{`pct` - częstość wyboru danej dziedziny w ramach danej płci (lub ogółem).}
#' }
#' @seealso [wykresKontynuacjeDziedzinyPlec]
"daneKontynuacjeDziedzinyPlec"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości (najczęściej wybieranych)
#' dyscyplin kontynuowania nauki na studiach w podziale ze względu na płeć.
#' @format Ramka danych z 30 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Ogółem*, *Mężczyźni*, *Kobiety*,}
#'   \item{`dyscyplina` - czynnik z nazwami dyscyplin, kolejność poziomów którego odzwierciedla częstość wyboru dyscyplin,}
#'   \item{`pct` - częstość wyboru danej dziedziny w ramach danej płci (lub ogółem).}
#' }
#' @seealso [wykresKontynuacjeDyscyplinyPlec]
"daneKontynuacjeDyscyplinyPlec"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości typu kontynuowania nauki - do
#' wykorzystania w raportach szkolnych.
#' @format Ramka danych z 5 wierszami i 2 kolumnami:
#' \itemize{
#'   \item{`kontynuacja` - czynnik o poziomach *Nie kontynuują kształcenia*, *Kurs umiejętności zawodowych*, *Kwalifikacyjny kurs zawodowy*, *Szkoła policealna*, *Szkoła wyższa* (w zależności od typu szkoły może to też być: *Nie kontynuują kształcenia*, *Kurs umiejętności zawodowych*, *Kwalifikacyjny kurs zawodowy*, *Branżowa szkoła II stopnia*, *Liceum dla dorosłych*)}
#'   \item{`pct` - częstość wyboru danego typu kształcenia.}
#' }
#' @seealso [wykresKontynuacjeTypSzkPlec]
"daneKontynuacjeTypSzk"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości typu kontynuowania nauki
#' w podziale ze względu na płeć.
#' @format Ramka danych z 9 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Ogółem*, *Mężczyźni*, *Kobiety*,}
#'   \item{`kontynuacja` - czynnik o poziomach *W szkole policealnej*, *W ramach KKZ*, *Na studiach* (w zależności od typu szkoły może to też być: *W ramach KKZ*, *W liceum dla dorosłych*, *W BS II*)}
#'   \item{`pct` - częstość wyboru danego typu kształcenia w ramach danej płci (lub ogółem).}
#' }
#' @seealso [wykresKontynuacjeTypSzkPlec]
"daneKontynuacjeTypSzkPlec"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie częstości typu kontynuowania nauki
#' w podziale ze względu na (najczęściej wybierane) zawody wyuczone.
#' @format Ramka danych z 30 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`nazwa_zaw` - czynnik z nazwami zawodów, kolejność poziomów którego odzwierciedla liczbę absolwentów w danym zawodzie,}
#'   \item{`kontynuacja` - czynnik o poziomach *W szkole policealnej*, *W ramach KKZ*, *Na studiach*,}
#'   \item{`pct` - częstość wyboru danego typu kształcenia w ramach danego zawodu.}
#' }
#' @seealso [wykresKontynuacjeTypSzkZawod]
"daneKontynuacjeTypSzkZawod"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie wyników matury w podziale ze względu na
#' płeć.
#' @format Ramka danych z 6 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`plec` - czynnik o poziomach *Ogółem*, *Mężczyźni*, *Kobiety*,}
#'   \item{`dyplom` - czynnik o poziomach *Uzyskanie świadectwa dojrzałości*, *Brak świadectwa dojrzałości*,}
#'   \item{`pct` - częstość danego wyniku matury w ramach danej płci (lub ogółem).}
#' }
#' @seealso [wykresMaturyPlec]
"daneMaturyPlec"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie wyników matury w podziale ze względu na
#' (najczęściej wybierane) zawody wyuczone.
#' @format Ramka danych z 20 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`nazwa_zaw` - czynnik z nazwami zawodów, kolejność poziomów którego odzwierciedla liczbę absolwentów w danym zawodzie,}
#'   \item{`dyplom` - czynnik o poziomach *Uzyskanie świadectwa dojrzałości*, *Brak świadectwa dojrzałości*,}
#'   \item{`pct` - częstość danego wyniku matury w ramach danego zawodu.}
#' }
#' @seealso [wykresMaturyZawod]
"daneMaturyZawod"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie rozkładu województw zamieszkania
#' absolwentów (z pewnego województwa) na podstawie danych z ZUS.
#' @format Ramka danych z 17 wierszami i 2 kolumnami:
#' \itemize{
#'   \item{`teryt_woj` - kody (1/2-cyforwe) TERYT województw,}
#'   \item{`pct` - częstość zamieszkiwania absolwentów na terenie danego województwa (na podstawie danych z ZUS).}
#' }
#' @seealso [wykresMigracjeWoj], [sfWoj]
"daneMigracjeWoj"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie płci w podziale ze względu na typ
#' ukończonej szkoły.
#' @format Ramka danych z 14 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`typ_szk` - czynnik z nazwami zawodów, kolejność poziomów którego odzwierciedla liczbę absolwentów w danym zawodzie,}
#'   \item{`plec` - czynnik o poziomach *Mężczyźni*, *Kobiety*,}
#'   \item{`pct` - częstość danej płci w ramach danego typu szkoły.}
#' }
#' @seealso [wykresPlec]
"danePlec"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie części okresu posiadania pracy
#' (w ramach okresu od września do grudnia roku ukończenia szkoły) pomiędzy daną
#' szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach
#' szkolnych.
#' @format Ramka danych z 6 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`grupa` - czynnik o wartościach *Państwa szkoła* i *Pozostałe \[typ szkoły] z \[JST stanowiąca grupę odniesienia]*,}
#'   \item{`okres_pracy` - czynnik o wartościach *Brak pracy*, *Praca przez część okresu*, *Praca przez cały okres*,}
#'   \item{`pct` - częstość danej długości okresu w ramach grupy.}
#' }
#' @seealso [wykresPracaOkresGrupaOdn]
"danePracaOkresGrupaOdn"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie parametrów rozkładu przychodów
#' z pracy (etatowej) pomiędzy daną szkołą a odpowiadającą jej
#' *grupą odniesienia* - do wykorzystania w raportach szkolnych.
#' @format Ramka danych z 2 wierszami i 6 kolumnami:
#' \itemize{
#'   \item{`grupa` - czynnik o wartościach *Państwa szkoła* i *Pozostałe \[typ szkoły] z \[JST stanowiąca grupę odniesienia]*,}
#'   \item{`c05` - 5. centyl rozkładu przychodów w ramach grupy,}
#'   \item{`c25` - 25. centyl (1. kwartyl) rozkładu przychodów w ramach grupy,}
#'   \item{`c50` - mediana rozkładu przychodów w ramach grupy,}
#'   \item{`c75` - 75. centyl (3. kwartyl) rozkładu przychodów w ramach grupy,}
#'   \item{`c95` - 95. centyl rozkładu przychodów w ramach grupy.}
#' }
#' @seealso [wykresPrzychodyGrupaOdn]
"danePrzychodyGrupaOdn"
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
#' @description Przykładowe zestawienie statusów edukacyjno-zawodowych ze
#' względu na (najczęściej wybierane) zawody wyuoczne.
#' @format Ramka danych z 50 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`nazwa_zaw` - czynnik z nazwami zawodów, kolejność poziomów którego odzwierciedla liczbę absolwentów w danym zawodzie,}
#'   \item{`status` - czynnik o poziomach *Tylko nauka*, *Nauka i praca*, *Tylko praca*, *Bezrobocie*, *Brak danych o aktywności*,}
#'   \item{`pct` - częstość danego statusu w ramach danego zawodu.}
#' }
#' @seealso [wykresStatusyZawod]
"daneStatusyZawod"
#' @title Przykladowe dane
#' @description Przykładowe zestawienie statusów edukacyjno-zawodowych pomiędzy
#' daną szkołą (ew. danym zawodem w danej szkole) a odpowiadającą jej
#' *grupą odniesienia* - do wykorzystania w raportach szkolnych.
#' @format Ramka danych z 10 wierszami i 3 kolumnami:
#' \itemize{
#'   \item{`grupa` - czynnik o wartościach *Państwa szkoła* i *Pozostałe \[typ szkoły] z \[JST stanowiąca grupę odniesienia]*,}
#'   \item{`status` - czynnik o poziomach *Tylko nauka*, *Nauka i praca*, *Tylko praca*, *Bezrobocie*, *Brak danych o aktywności*,}
#'   \item{`pct` - częstość danego statusu w ramach danej grupy.}
#' }
#' @seealso [wykresStatusyGrupaOdn]
"daneStatusyGrupaOdn"
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
