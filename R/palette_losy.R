#' @title Skale kolorow
#' @description
#' Zwraca skale kolorów wykorzystywane w monitoringu karier absolwentów szkół
#' ponadpodstawowych.#'
#' @param type ciąg znaków - typ skali
#' @importFrom ggplot2 discrete_scale waiver
#' @export
palette_losy <- function(type = c("statusy", "plec", "matura",
                                  "dyplomyZaw", "typySzkol", "kontynuacje")) {
  type <- match.arg(type, several.ok = FALSE)
  return(list(
    statusy = c("Tylko nauka" = "#009899",
                "Nauka i praca" = "#feae51",
                "Tylko praca" = "#f66831",
                "Bezrobocie" = "#0063aa",
                "Brak danych o aktywności" = "#b1b1b1"),
    plec = c("Kobiety" = "#f7af41",
             "Mężczyźni" = "#3d4f7d",
             "Ogółem" = "#009899"),
    matura = c("Uzyskanie świadectwa dojrzałości" = "#ec625a",
               "Brak świadectwa dojrzałości" = "#3a4050"),
    dyplomyZaw = c("Świadectwo czeladnicze" = "#009899",
                   "Dyplom zawodowy" = "#ec625a",
                   "Tylko certyfikat kwalifikacji" = "#f7af41",
                   "Brak certyfikatów i dyplomu" = "#3c4250"),
    typySzkol = c("Liceum ogólnokształcące" = "#00a7db",
                  "Liceum dla dorosłych" = "#0063aa",
                  "Technikum" = "#d73568",
                  "Branżowa szkoła II stopnia" = "#006665",
                  "Szkoła policealna" = "#b1b1b1",
                  "Branżowa szkoła I stopnia" = "#f66831",
                  "Szkoła specjalna przysposabiająca do pracy" = "#feae51"),
    kontynuacje = c("W szkole policealnej" = "#f66831",
                    "W ramach KKZ" = "#f7af41",
                    "Na studiach" = "#3d4f7d"))[[type]])
}
