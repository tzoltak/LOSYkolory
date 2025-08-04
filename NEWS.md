# LOSYkolory 0.3.0 (04.08.2025)

## Nowe funkcje i funkcjonalności

-   Nowa funkcja `zlacz_z_mapa()` pozwalająca w łatwy i niezawodny sposób połączyć dane (z wartościami wskaźników) do zilustrowania na kartogramie (np. `daneMigracjeWoj`) z mapą, która ma być wykorzystana przy rysowaniu kartogramu,
-   Nowa funkcja `st_point_on_surface_sw()`, pozwalająca uniknąć generowania ostrzeżeń przy rysowaniu kartogramów wykorzystujących funkcje pakietu *ggplot2* `geom_sf_text()` lub `geom_sf_label()` - wykorzystywana do tworzenia szablonów kartogramów.
    -   W konsekwencji pakiet *sf* został zależnością typu *import* (zamiast *suggests*), ale można było usunąć klauzulę `\dontrun` z przykładów użycia szablonów kartogramów.

## Nowe palety i skale

-   `palette_losy()`, a w konsekwencji również `scale_[color|colour|fill]_losy[|_fg]()`, otrzymały argument `variantOld`, pozwalający uzyskać *stare* palety kolorów, tj. te wykorzystywane w raportach z monitoringu do 2024 r.,

## Nowe szablony wykresów

-   Szablony wykresów wykorzystujące *stare* palety kolorów zamiast *nowych*:

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
    -   `wykresPrzychodyGrupaOdnOld`,
    -   `wykresStatusyGrupaOdnOld`,
    -   `wykresStatusyOld`,
    -   `wykresStatusyPlecOld`,
    -   `wykresStatusyZawodOld`,
    -   `wykresTypySzkolOld`.

# LOSYkolory 0.2.0 (24.07.2025)

## Nowe palety i skale

-   `palette_losy()` obsługuje nowe wartości argumentu `type`:
    -   "bezrobocie" - do wykresów prezentujących odsetek bezrobotnych wśród absolwentów,
    -   "formyZatrudn" - do wykresów prezentujących formy zatrudnienia w raportach szkolnych,
    -   "grupaOdn" - do wykresów w raportach szkolnych, w których kolor odróżnia daną szkołę od odpowiadajacej jej *grupy odniesienia*,
    -   "kontMlodocPracEdu" - do wykresów opisujących kontynuowanie (lub nie) zatrudnienia u pracodawcy zatrudniającego wcześniej absolwenta jako młodocianego pracownika (w raportach szkolnych),
    -   "kontMlodocPracNedu" - do wykresów opisujących kontynuowanie (lub nie) zatrudnienia u pracodawcy zatrudniającego wcześniej absolwenta jako młodocianego pracownika (w raportach szkolnych),
    -   "okresPracy" - do wykresów prezentujących, jak dużą część monitorowanego okresu absolwenci byli zatrudnieni (w raportach szkolnych),
    -   "kontynuacje" - nowe wartości odpowiadające kontynuacjom po BS I ("W liceum dla dorosłych" i "W BS II").
-   `palette_losy()`, oraz `scale_[color|colour|fill]_losy[|_fg]()` otrzymały argument `unname` pozwalający wskazać, że kolory ze skali kolorów mają nie być mapowane po wartościach zmiennej (tylko na podstawie kolejności posortowanego zbioru unikalnych wartości zmiennej w danych wykresu); jest to użyteczne, jeśli zmienna nie ma stałego zestawu wartości, jak w przypadku zmiennej odróżniającej daną szkołę od odpowiadającej jej *grupy odniesienia*.
-   Nowe funkcje `scale_colour_gradient_fg()`/`scale_color_gradient_fg()`, pozwalają ustawić bardziej kontrastowy kolor tekstu w przypadku, gdy kolor tła ustawiany jest funkcją `scale_color_gradient()` (lub równoważnie).

## Nowe dane i szablony wykresów

-   `daneBezrobocie`/`wykresBezrobocie`,
-   `daneBezrobocieOkresGrupaOdn`/`wykresBezrobocieOkresGrupaOdn`,
-   `daneBezrobociePlec`/`wykresBezrobociePlec`,
-   `daneBezrobocieZawod`/`wykresBezrobocieZawod`,
-   `daneDyplomyPlec`/`wykresDyplomyPlec` - zmiana nazw z `daneDyplomy`/`wykresDyplomy`,
-   `daneDyplomyZawod`/`wykresDyplomyZawod`,
-   `daneFormyZatrudnGrupaOdn`/`wykresFormyZatrudnGrupaOdn`,
-   `daneKontMlodocPracEduGrupaOdn`/`wykresKontMlodocPracEduGrupaOdn`,
-   `daneKontMlodocPracNeduGrupaOdn`/`wykresKontMlodocPracNeduGrupaOdn`,
-   `daneKontynuacjeDyscyplinyPlec`/`wykresKontynuacjeDyscyplinyPlec`,
-   `daneKontynuacjeDziedzinyPlec`/`wykresKontynuacjeDziedzinyPlec` - zmiana nazw z `daneKontynuacjeDziedziny`/`wykresKontynuacjeDziedziny`,
-   `daneKontynuacjeTypSzk`/`wykresKontynuacjeTypSzk`,
-   `daneKontynuacjeTypSzkPlec`/`wykresKontynuacjeTypSzkPlec` - zmiana nazw z `daneKontynuacjeTypSzk`/`wykresKontynuacjeTypSzk`,
-   `daneKontynuacjeTypSzkZawod`/`wykresKontynuacjeTypSzkZawod`,
-   `daneMaturyPlec`/`wykresMaturyPlec`,
-   `daneMaturyZawod`/`wykresMaturyZawod` - zmiana nazw z `daneMatury`/`wykresMatury`,
-   `daneMigracjeWoj`/`sfWoj`/`wykresMigracjeWoj`,
-   `danePracaOkresGrupaOdn`/`wykresPracaOkresGrupaOdn`,
-   `danePrzychodyGrupaOdn`/`wykresPrzychodyGrupaOdn`,
-   `daneStatusyZawod`/`wykresStatusyZawod`,
-   `daneStatusyGrupaOdn`/`wykresStatusyGrupaOdn`.

## Usunięte błędy

-   `pick_more_contrasting()` obsługuje także sytuację, kiedy argumentem `fg` przekazany został tylko jeden kolor (a poza tym zwraca ładnie przypisane nazwy zarówno wierszy jak i kolumn w atrybucie `contrasts`).

# LOSYkolory 0.1.0 (9.06.2025)

-   Pierwsza działająca wersja pakietu.
