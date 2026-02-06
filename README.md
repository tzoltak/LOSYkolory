# LOSYkolory

![FERS+RP+UE+IBE-PIB](inst/Belka-FERS-IBE-PIB.png)

Pakiet został opracowany w ramach projektu *Rozwój Systemu Monitoringu Karier Absolwentów i Absolwentek Szkół Ponadpodstawowych* (FERS.01.04-IP.05-0013/23) prowadzonego w Instytucie Badań Edukacyjnych Państwowym Instytucie Badawczym, który jest finansowany z Funduszy Europejskich dla Rozwoju Społecznego (FERS).

Pakiet zawiera palety kolorów i szablony wykresów *ggplot2* oraz funkcje ułatwiające modyfikowanie niektórych elementów tych wykresów, opracowane do wykorzystania w ramach systemu monitoringu karier absolwentów polskich szkół ponadpodstawowych.

# Instalacja / aktualizacja

Pakiet nie jest wypchnięty na CRAN, więc trzeba instalować go ze źródeł.

Ponieważ jednak zawiera jedynie kod w R, nie ma potrzeby zaopatrywać się w kompilatory, itp.

Instalację najprościej przeprowadzić wykorzystując pakiet *remotes*:

``` r
install.packages('remotes') # potrzebne tylko, gdy nie jest jeszcze zainstalowany
remotes::install_github('tzoltak/LOSYkolory')
```

Dokładnie w ten sam sposób można przeprowadzić aktualizację pakietu do najnowszej wersji.

# Zawartość

1.  Szablony wykresów wykorzystywanych w raportach z monitoringu. Szablony wykresów (obiekty z wykresami *ggplot2*) oraz wykorzystywane przez nie szablony danych (ramki danych zawierające artefaktualne dane - prawdziwe dane powinny zostać przygotowane w analogicznej strukturze, aby mogły zostać użyte z danym szablonem wykresu) są zapisane jako obiekty R zamknięte w pakiecie i dostępne pod następującymi nazwami:

    -   `wykresBezrobocie`/`daneBezrobocie` - częstość występowania bezrobotnych wśród absolwentów w poszczególnych miesiącach od ukończenia szkoły,
    -   `wykresBezrobocieOkresGrupaOdn`/`daneBezrobocieOkresGrupaOdn` - częstość występowania bezrobotnych w porównaniu pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach szkolnych,
    -   `wykresBezrobociePlec`/`daneBezrobociePlec` - częstość występowania bezrobotnych wśród absolwentów w podziale ze względu na płeć,
    -   `wykresBezrobocieZawod`/`daneBezrobocieZawod` - częstość występowania bezrobotnych wśród absolwentów w podziale ze względu na (najczęściej wykonywane) zawody wyuczone,
    -   `wykresDyplomyPlec`/`daneDyplomyPlec` - uzyskiwanie dyplomów w podziale ze względu na płeć,
    -   `wykresDyplomyZawod`/`daneDyplomyZawod` - uzyskiwanie dyplomów w podziale ze względu na (najczęściej wykonywane) zawody wyuczone,
    -   `wykresFormyZatrudnGrupaOdn`/`daneFormyZatrudnGrupaOdn` - formy zatrudnienia w porównaniu pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach szkolnych,
    -   `wykresKontMlodocPracEduGrupaOdn`/`daneKontMlodocPracEduGrupaOdn`- częstość kontynuowania pracy u tego samego pracodawcy, u którego absolwent był młodocianym pracownikiem, wśród absolwentów kontynuujących naukę pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach szkolnych,
    -   `wykresKontMlodocPracNeduGrupaOdn`/`daneKontMlodocPracNeduGrupaOdn`- częstość kontynuowania pracy u tego samego pracodawcy, u którego absolwent był młodocianym pracownikiem, wśród absolwentów niekontynuujących nauki pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach szkolnych,
    -   `wykresKontynuacjeDyscyplinyPlec`/`daneKontynuacjeDyscyplinyPlec` - dyscypliny kontynuowania nauki na studiach w podziale ze względu na płeć,
    -   `wykresKontynuacjeDziedzinyPlec`/`daneKontynuacjeDziedzinyPlec` - dziedziny kontynuowania nauki na studiach w podziale ze względu na płeć,
    -   `wykresKontynuacjeTypSzk`/`daneKontynuacjeTypSzk` - forma kontynuowania nauki - do wykorzystania w raportach szkolnych,
    -   `wykresKontynuacjeTypSzkPlec`/`daneKontynuacjeTypSzkPlec` - forma kontynuowania nauki w podziale ze względu na płeć,
    -   `wykresKontynuacjeTypSzkZawod`/`daneKontynuacjeTypSzkZawod` - forma kontynuowania nauki w podziale ze względu na (najczęściej wykonywane) zawody wyuczone,
    -   `wykresMaturyPlec`/`daneMaturyPlec` - wyniki matury (zdana/nie zdana) w podziale ze względu na płeć,
    -   `wykresMaturyZawod`/`daneMaturyZawod`- wyniki matury (zdana/nie zdana) w podziale ze względu na (najczęściej wykonywane) zawody wyuczone,
    -   `wykresMigracjeWoj`/`daneMigracjeWoj`/`sfWoj` - kartogram ilustrujący migracje na poziomie województw,
    -   `wykresPlec`/`danePlec` - płeć w podziale ze względu na typ ukończonej szkoły,
    -   `wykresPracaOkresGrupaOdn`/`danePracaOkresGrupaOdn` - długość posiadania pracy pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach szkolnych,
    -   `wykresPrzeplywyStatusy`/`danePrzeplywyStatusy` - trajektorie edukacyjno-zawodowe zilustrowane w formie wykresu przepływów - zaproponowany do wykorzystania w odniesieniu do absolwentów w pięć lat po ukończeniu szkoły,
    -   `wykresPrzychodyGrupaOdn`/`danePrzychodyGrupaOdn` - rozkład przychodów z pracy (etatowej) w porównaniu pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach szkolnych,
    -   `wykresStatusy`/`daneStatusy`- statusy edukacyjno-zawodowe ze względu na miesiąc od ukończenia szkoły,
    -   `wykresStatusyPlec`/`daneStatusyPlec` - statusy edukacyjno-zawodowe ze względu na płeć,
    -   `wykresStatusyZawod`/`daneStatusyZawod` - statusy edukacyjno-zawodowe ze względu na (najczęściej wykonywane) zawody wyuczone,
    -   `wykresStatusyGrupaOdn`/`daneStatusyGrupaOdn` - statusy edukacyjno-zawodowe w porównaniu pomiędzy daną szkołą a odpowiadającą jej *grupą odniesienia* - do wykorzystania w raportach szkolnych.
    -   `wykresTypySzkol`/`daneTypySzkol` - typy ukończonych szkół.

2.  Funkcje umożliwiające zmienianie niektórych elementów wykresów *ggplot2*, wykorzystywanych jako szablony:

    -   `theme_losy()` - zmienia *temat* wykresu na wykorzystywany w monitoringu, umożliwia zmianę wielkości i rodziny czcionek elementów tekstowych wykresu nie będących *geometriami*,
    -   `zmien_rodzine_czcionek()` - zmienia rodzinę czcionek w *geometriach* tekstowych wykresu,
    -   `zmien_wielkosc_czcionek()` - zmienia wielkość czcionek elementów tekstowych wykresu i ew. również *geometrii* tekstowych wykresu,
    -   `zmien_wielkosc_etykiet()` - zmienia wielkość czcionek w *geometriach* tekstowych wykresu,,
    -   `zmien_prog_pokazywania_etykiet()` - zmienia próg, poniżej którego etykiety wartości (będące *geometriami* tekstowymi) są na wykresie ukrywane,
    -   `zmien_rok_w_podpisie()`, `dodaj_rok_w_podpisie()` - dodawanie do wykresu lub zmienianie już istniejącego podpisu zawierającego formułkę wskazującą system monitoringu jako źródło danych.

3.  Funkcji zwracających palety kolorów wykorzystywane w monitoringu karier absolwentów szkół ponadpodstawowych oraz pozwalające zastosować je do wykresów *ggplot2*:

    -   `palette_losy()` - zwraca palety wykorzystywane w monitoringu,
    -   `scale_color_losy()`, `scale_colour_losy()`, `scale_fill_losy()` - pozwalają zastosować palety wykorzystywane w monitoringu do wykresów *ggplot2*,
    -   `scale_color_losy_fg()`, `scale_colour_losy_fg()`, `scale_fill_losy_fg()`, `scale_color_gradient_fg()`, `scale_colour_gradient_fg()` - pozwalają wybrać jak najbardziej kontrastowe kolory pierwszoplanowe do kolorów palet wykorzystywanych w monitoringu (które mają być tłem dla tych kolorów pierwszoplanowych) i zastosować je do wykresów *ggplot2*.

4.  Funkcje pozwalające wygodnie formatować etykiety wartości wykresów słupkowych, w tym ukrywać etykiety wartości mniejszych od zadanego progu:

    -   `percent_pl()`, `label_percent_pl()` - formatowanie procentów z zastosowaniem polskich reguł ortograficznych i z możliwością ukrycia wartości poniżej zadanego progu.

5.  Funkcje pozwalające obliczać luminację kolorów i kontrast pomiędzy parami kolorów, zgodnie ze standardami WCAG 3.x i 2.x:

    -   `pick_more_contrasting()` - wybór kolorów jak najbardziej kontrastowych do podanych,
    -   `compute_apca_contrast()`, `compute_screen_luminance()` - kontrast i luminacja godnie ze standardem WCAG 3.x,
    -   `compute_contrast_ratio()`, `compute_relative_luminance()` - kontrast i luminacja godnie ze standardem WCAG 2.x.

6.  Funkcje pomocnicze ułatwiające podstawienie nowych danych do szablonów wykresów:

    -   `podmien_dane_wykresu()` - pozwala podmienić dane wykresu obsługując również sytuację, gdy nie pasują one do wymaganej przez wykres struktury (co oznacza, że wykres nie może zostać narysowany, ale użytkownik może nie chcieć, aby wiązało się to z wygenerowaniem błędu),
    -   `zlacz_z_mapa()`- przyłącza dane opisujące wskaźniki obliczone na poziomie województw do obiektu klasy [sf::sf] zawierającego mapę, która ma zostać użyta do narysowania kartogramu.

# Użycie

## Typowy sposób użycia

Najbardziej typowy schemat użycia to wybrać odpowiedni szablon wykresu, podmienić w nim dane, zmodyfikować podpis, próg ukrywania etykiet i wielkość czcionek adekwatnie do swoich potrzeb.

```{r}
library(LOSYkolory)
library(ggplot2)

str(daneDyplomyPlec) # szablon oczekuje danych o takiej strukturze
noweDane <- daneDyplomyPlec # podstawiam tu te same dane, ale w realnym użyciu będą inne

(wykresDyplomyPlec + noweDane) |> # podmiana danych
  zmien_wielkosc_czcionek(baseSize = 16) |> # zmiana wielkości czcionki
  zmien_prog_pokazywania_etykiet(hideBelow = 0.04) |> # zmiana progu ukrywania etykiet
  zmien_rok_w_podpisie(2024) # zmiana roku w podpisie
```

Jeśli pakiet wykorzystywany jest w ramach automatycznego generowania raportów, kiedy dane niektórych wykresów mogą okazać się *zdegenerowane*, co oznacza, że dany wykres nie powinien zostać narysowany, ale nie powinno skutkować błędem, do podmiany danych należy użyć funkcji `podmien_dane_wykresu()`. W takim przypadku wszelkie modyfikacje szablonu muszą zostać dokonane przed podmianą danych:

```{r}
wykresDyplomyPlec |>
  zmien_wielkosc_czcionek(baseSize = 16) |> # zmiana wielkości czcionki
  zmien_prog_pokazywania_etykiet(hideBelow = 0.04) |> # zmiana progu ukrywania etykiet
  zmien_rok_w_podpisie(2024) |> # zmiana roku w podpisie
  podmien_dane_wykresu(noweDane) # podmiana danych
# dane "zdegenerowane":
brakDanych <- data.frame(uwaga = "W danych było mniej niż 10 absolwentów - wyniki analiz nie mogą zostać pokazane")
wykresDyplomyPlec |>
  zmien_wielkosc_czcionek(baseSize = 16) |> # zmiana wielkości czcionki
  zmien_prog_pokazywania_etykiet(hideBelow = 0.04) |> # zmiana progu ukrywania etykiet
  zmien_rok_w_podpisie(2024) |> # zmiana roku w podpisie
  podmien_dane_wykresu(brakDanych) # podmiana danych
```

## Kartogramy

Nieco innego podejścia wymaga przygotowanie kartogramu - choć z punktu widzenia użytkownika pakietu mapa stanowi jego element stały, na który tylko nanosi się dane, to z technicznego punktu widzenia mapa jest częścią danych przekazywanych do wywołania funkcji rysującej wykres. W związku z tym konieczne jest połączenie danych z mapą przy pomocy funkcji `zlacz_z_mapa()`:

```{r}
library(LOSYkolory)
library(ggplot2)

str(daneMigracjeWoj) # szablon oczekuje danych o takiej strukturze
noweDane <- daneMigracjeWoj # podstawiam tu te same dane, ale w realnym użyciu będą inne

(wykresMigracjeWoj + zlacz_z_mapa(noweDane)) |> # podmiana danych
  zmien_wielkosc_czcionek(baseSize = 20) |> # zmiana wielkości czcionki
  zmien_rok_w_podpisie(2024) # zmiana roku w podpisie
```

Warto zwrócić uwagę, że kartogram obsługuje również pokazanie wartości wskaźnika dla *nieznanego województwa* (np. tu: ponieważ miejsce zamieszkania ustalane jest na podstawie danych ZUS, nie da się go określić dla osób, za które nie były odprowadzane składki). W tym celu można w danych przekazywanych do wykresu użyć rekordu, dla którego kolumna `nazwa_woj` przyjmuje wartość `NA_integer_`, por. ostatni wiersz w obiekcie `daneMigracjeWoj`:

```{r}
daneMigracjeWoj
```

Jeśli jednak dane przekazane do funkcji `zlacz_z_mapa()` nie będą zawierać takiego rekordu, nie zostanie on narysowany:

```{r}
wykresMigracjeWoj + zlacz_z_mapa(noweDane[!is.na(noweDane$teryt_woj), ])
```

### Eksportowanie *shape'ów*

Zawarte w pakiecie geometrie pozwalające tworzyć kartogramy opisujące województwa (obiekt `sfWoj`) i powiaty (obiekt `sfPow`) można łatwo wyeksportować w celu wykorzystania ich w zewnętrznych aplikacjach, korzystając z funkcji pakietu *sf*.

Np. poniższa linijka eksportuje geometrie powiatów do pliku w formacie GeoJSON o nazwie *powiaty.geojson*:

```{r}
sf::st_write(sfPow, "powiaty.geojson")
```

Więcej informacji o dostępnych formatach i opcjach zapisu znajduje się w [dokumentacji pakietu *sf*](https://r-spatial.github.io/sf/articles/sf2.html).

## Stare wersje palet

W pakiecie jako opcja domyślna zaimplementowane zostało użycie nowych palet kolorów, opracowanych w 2025 r. Możliwa jest jednak zmiana na palety stosowane we wcześniej opracowanych raportach (z małymi odstępstwami - p. niżej). W tym celu należy wykorzystać szablony wykresów z dodanym na końcu przyrostkiem *Old*:

-   `wykresBezrobocieOkresGrupaOdnOld`,
-   `wykresBezrobocieOld`,
-   `wykresBezrobociePlecOld`,
-   `wykresBezrobocieZawodOld`,
-   `wykresDyplomyPlecOld`,
-   `wykresDyplomyZawodOld`,
-   `wykresFormyZatrudnGrupaOdnOld`,
-   `wykresKontMlodocPracEduGrupaOdnOld`,
-   `wykresKontMlodocPracNeduGrupaOdnOld`,
-   `wykresKontynuacjeDyscyplinyPlecOld`,
-   `wykresKontynuacjeDziedzinyPlecOld`,
-   `wykresKontynuacjeTypSzkOld`,
-   `wykresKontynuacjeTypSzkPlecOld`,
-   `wykresKontynuacjeTypSzkZawodOld`,
-   `wykresMaturyPlecOld`,
-   `wykresMaturyZawodOld`,
-   `wykresPlecOld` - wykres wykorzystuje tę samą paletę dla płci, co inne (*stare*) wykresy opisujące płeć kolorem, co stanowi odstępstwo od palety wykorzystywanej wcześniej w raportach,
-   `wykresPracaOkresGrupaOdnOld`,
-   `wykresPrzeplywyStatusyOld`,
-   `wykresPrzychodyGrupaOdnOld`,
-   `wykresStatusyGrupaOdnOld`,
-   `wykresStatusyOld`,
-   `wykresStatusyPlecOld`,
-   `wykresStatusyZawodOld`,
-   `wykresTypySzkolOld`.
