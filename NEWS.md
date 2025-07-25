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
