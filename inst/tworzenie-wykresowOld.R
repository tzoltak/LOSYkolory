# Najpierw utwórz wykresy z nowymi paletami kolorystycznymi,
# następnie zbuduj pakiet i dopiero uruchamiaj kod poniżej!
library(ggplot2)
library(LOSYkolory)

wykresBezrobocieOld <- wykresBezrobocie
wykresBezrobocieOkresGrupaOdnOld <-
  suppressMessages(wykresBezrobocieOkresGrupaOdn +
                     scale_fill_losy(NULL, type = "grupaOdn", unname = TRUE,
                                     variantOld = TRUE, guide = "none"))
wykresBezrobociePlecOld <-
  suppressMessages(wykresBezrobociePlec +
                     scale_fill_losy(NULL, type = "bezrobocie",
                                     variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "bezrobocie",
                                          variantOld = TRUE, guide = "none"))
wykresBezrobocieZawodOld <-
  suppressMessages(wykresBezrobocieZawod +
                     scale_fill_losy(NULL, type = "bezrobocie",
                                     variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "bezrobocie",
                                          variantOld = TRUE, guide = "none"))
wykresDyplomyPlecOld <-
  suppressMessages(wykresDyplomyPlec +
                     scale_fill_losy(NULL, type = "dyplomyZaw",
                                     variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "dyplomyZaw",
                                          variantOld = TRUE, guide = "none"))
wykresDyplomyZawodOld <-
  suppressMessages(wykresDyplomyZawod +
                     scale_fill_losy(NULL, type = "dyplomyZaw",
                                     variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "dyplomyZaw",
                                          variantOld = TRUE, guide = "none"))
wykresFormyZatrudnGrupaOdnOld <-
  suppressMessages(wykresFormyZatrudnGrupaOdn +
                     scale_fill_losy(NULL, type = "formyZatrudn",
                                     variantOld = TRUE,
                                     guide = guide_legend(ncol = 1)) +
                     scale_colour_losy_fg(NULL, type = "formyZatrudn",
                                          variantOld = TRUE, guide = "none"))
wykresKontMlodocPracEduGrupaOdnOld <-
  suppressMessages(wykresKontMlodocPracEduGrupaOdn +
                     scale_fill_losy(NULL, type = "kontMlodocPracEdu",
                                     variantOld = TRUE,
                                     guide = guide_legend(ncol = 1)) +
                     scale_colour_losy_fg(NULL, type = "kontMlodocPracEdu",
                                          variantOld = TRUE, guide = "none"))
wykresKontMlodocPracNeduGrupaOdnOld <-
  suppressMessages(wykresKontMlodocPracNeduGrupaOdn +
                     scale_fill_losy(NULL, type = "kontMlodocPracNedu",
                                     variantOld = TRUE,
                                     guide = guide_legend(ncol = 1)) +
                     scale_colour_losy_fg(NULL, type = "kontMlodocPracNedu",
                                          variantOld = TRUE, guide = "none"))
wykresKontynuacjeDziedzinyPlecOld <-
  suppressMessages(wykresKontynuacjeDziedzinyPlec +
                     scale_fill_losy(NULL, type = "plec", variantOld = TRUE,
                                     guide = guide_legend(ncol = 3)))
wykresKontynuacjeDyscyplinyPlecOld <-
  suppressMessages(wykresKontynuacjeDyscyplinyPlec +
                     scale_fill_losy(NULL, type = "plec", variantOld = TRUE,
                                     guide = guide_legend(ncol = 3)))
wykresKontynuacjeTypSzkOld <- ggplot(daneKontynuacjeTypSzk,
                                     aes(pct, kontynuacja,
                                         label = percent_pl(pct, digits = 0))) +
  geom_col(position = position_dodge2(width = 1, reverse = TRUE),
           fill = "#90CF60") +
  geom_text(position = position_dodge2(width = 1, reverse = TRUE),
            size = 6, hjust = -0.2) +
  scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
  scale_y_discrete(NULL) +
  theme_losy()
wykresKontynuacjeTypSzkPlecOld <-
  suppressMessages(wykresKontynuacjeTypSzkPlec +
                     scale_fill_losy(NULL, type = "kontynuacje",
                                     variantOld = TRUE,
                                     guide = guide_legend(ncol = 3)))
wykresKontynuacjeTypSzkZawodOld <-
  suppressMessages(wykresKontynuacjeTypSzkZawod +
                     scale_fill_losy(NULL, type = "kontynuacje",
                                     variantOld = TRUE,
                                     guide = guide_legend(ncol = 3)))
wykresMaturyPlecOld <-
  suppressMessages(wykresMaturyPlec +
                     scale_fill_losy(NULL, type = "matura", variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "matura",
                                          variantOld = TRUE, guide = "none"))
wykresMaturyZawodOld <-
  suppressMessages(wykresMaturyZawod +
                     scale_fill_losy(NULL, type = "matura", variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "matura",
                                          variantOld = TRUE, guide = "none"))
wykresPlecOld <-
  suppressMessages(wykresPlec +
                     scale_fill_losy(NULL, type = "plec", variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "plec", variantOld = TRUE,
                                          guide = "none"))
wykresPracaOkresGrupaOdnOld <-
  suppressMessages(wykresPracaOkresGrupaOdn +
                     scale_fill_losy(NULL, type = "okresPracy",
                                     variantOld = TRUE,
                                     guide = guide_legend(nrow = 1)) +
                     scale_colour_losy_fg(NULL, type = "okresPracy",
                                          variantOld = TRUE, guide = "none"))
wykresPrzychodyGrupaOdnOld <-
  suppressMessages(wykresPrzychodyGrupaOdn +
                     scale_fill_losy(NULL, type = "grupaOdn", unname = TRUE,
                                     variantOld = TRUE, guide = "none"))
wykresStatusyOld <-
  suppressMessages(wykresStatusy +
                     scale_fill_losy(NULL, type = "statusy", variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "statusy",
                                          variantOld = TRUE, guide = "none"))
wykresStatusyPlecOld <-
  suppressMessages(wykresStatusyPlec +
                     scale_fill_losy(NULL, type = "statusy", variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "statusy",
                                          variantOld = TRUE, guide = "none"))
wykresStatusyZawodOld <-
  suppressMessages(wykresStatusyZawod +
                     scale_fill_losy(NULL, type = "statusy", variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "statusy",
                                          variantOld = TRUE, guide = "none"))
wykresStatusyGrupaOdnOld <-
  suppressMessages(wykresStatusyGrupaOdn +
                     scale_fill_losy(NULL, type = "statusy", variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "statusy",
                                          variantOld = TRUE, guide = "none"))
wykresTypySzkolOld <-
  suppressMessages(wykresTypySzkol +
                     scale_fill_losy(NULL, type = "typySzkol", variantOld = TRUE,
                                     guide = guide_legend(ncol = 2)) +
                     scale_colour_losy_fg(NULL, type = "typySzkol",
                                          variantOld = TRUE, guide = "none"))

save(list = ls(), file = "data/plotsOld.RData", compress = "xz")
rm(list = ls())
