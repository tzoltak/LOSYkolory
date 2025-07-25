#' @title Skale kolorow
#' @description
#' Zwraca skale kolorów wykorzystywane w monitoringu karier absolwentów szkół
#' ponadpodstawowych.#'
#' @param type ciąg znaków - typ skali
#' @param unname wartość logiczna - czy zwracany wektor ma mieć przypisane
#' nazwy (opisujące, jakiej wartości ma odpowiadać dany kolor)?
#' (konieczne, kiedy mapowana zmienna nie ma stałego zestawu wartości, jak
#' w przypadku raportów szkolnych, gdy kolorem oznaczana jest dana szkoła
#' w odróżnieniu od jej *grupy odniesienia*, p. [wykresBezrobocieOkresGrupaOdn]
#' i [wykresPrzychodyGrupaOdn])
#' @returns wektor ciągów znaków z kodami kolorów palety
#' @importFrom ggplot2 discrete_scale waiver
#' @export
palette_losy <- function(type = c("bezrobocie", "dyplomyZaw", "formyZatrudn",
                                  "grupaOdn", "kontMlodocPracEdu",
                                  "kontMlodocPracNedu", "kontynuacje", "matura",
                                  "okresPracy", "plec", "statusy", "typySzkol"),
                         unname = FALSE) {
  type <- match.arg(type, several.ok = FALSE)
  stopifnot(is.logical(unname), length(unname) == 1L, unname %in% c(TRUE, FALSE))
  palettes <- list(
    bezrobocie = c("Zarejestrowany jako bezrobotny" = "#d73568",
                   "Brak statusu bezrobotnego" = "#feae51",
                   "line" = "#b1b1b1",
                   "point" = "#d73568"),
    dyplomyZaw = c("Świadectwo czeladnicze" = "#009899",
                   "Dyplom zawodowy" = "#ec625a",
                   "Tylko certyfikat kwalifikacji" = "#f7af41",
                   "Brak certyfikatów i dyplomu" = "#3c4250"),
    formyZatrudn = c("Tylko samozatrudnieni" = "#3d4f7d",
                     "Tylko zatrudnieni na podstawie innej formy umowy niż umowa o pracę" = "#009899",
                     "Zatrudnieni na podstawie więcej niż jednej formy umowy" = "#feae51",
                     "Zatrudnieni tylko na podstawie umowy o pracę" = "#f66831"),
    grupaOdn = c("Państwa szkoła" = "#0063aa",
                 "Grupa odniesienia" = "#feae51"),
    kontMlodocPracEdu = c("Uczący się, kontynuujący pracę u danego pracodawcy na podstawie umowy o pracę" = "#ec625a",
                          "Uczący się, kontynuujący pracę u danego pracodawcy\nna podstawie umowy o pracę" = "#ec625a",
                          "Uczący się, kontynuujący pracę u danego pracodawcy w formie innej niż umowa o pracę" = "#feae51",
                          "Uczący się, kontynuujący pracę u danego pracodawcy\nw formie innej niż umowa o pracę" = "#feae51",
                          "Uczący się, niekontynuujący pracy u danego pracodawcy" = "#d73568"),
    kontMlodocPracNedu = c("Nieuczący się, kontynuujący pracę u danego pracodawcy na podstawie umowy o pracę" = "#ec625a",
                           "Nieuczący się, kontynuujący pracę u danego pracodawcy\nna podstawie umowy o pracę" = "#ec625a",
                           "Nieuczący się, kontynuujący pracę u danego pracodawcy w formie innej niż umowa o pracę" = "#feae51",
                           "Nieuczący się, kontynuujący pracę u danego pracodawcy\nw formie innej niż umowa o pracę" = "#feae51",
                           "Nieuczący się, niekontynuujący pracy u danego pracodawcy" = "#d73568"),
    kontynuacje = c("W szkole policealnej" = "#f66831",
                    "W ramach KKZ" = "#f7af41",
                    "W liceum dla dorosłych" = "#3d4f7d",
                    "W BS II" = "#f66831",
                    "Na studiach" = "#3d4f7d"),
    matura = c("Uzyskanie świadectwa dojrzałości" = "#ec625a",
               "Brak świadectwa dojrzałości" = "#3a4050"),
    okresPracy = c("Brak pracy" = "#f66831",
                   "Praca przez część okresu" = "#feae51",
                   "Praca przez cały okres" = "#009899"),
    plec = c("Kobiety" = "#f7af41",
             "Mężczyźni" = "#3d4f7d",
             "Ogółem" = "#009899"),
    statusy = c("Tylko nauka" = "#009899",
                "Nauka i praca" = "#feae51",
                "Tylko praca" = "#f66831",
                "Bezrobocie" = "#0063aa",
                "Brak danych o aktywności" = "#b1b1b1"),
    typySzkol = c("Liceum ogólnokształcące" = "#00a7db",
                  "Liceum dla dorosłych" = "#0063aa",
                  "Technikum" = "#d73568",
                  "Branżowa szkoła II stopnia" = "#006665",
                  "Szkoła policealna" = "#b1b1b1",
                  "Branżowa szkoła I stopnia" = "#f66831",
                  "Szkoła specjalna przysposabiająca do pracy" = "#feae51"))
  palette <- palettes[[type]]
  if (unname) palette <- unname(palette)
  return(palette)
}
