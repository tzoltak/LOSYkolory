library(ggplot2)
library(LOSYkolory)

wykresBezrobocie <-
  ggplot(daneBezrobocie,
         aes(miesiac, bezrobocie, group = 1,
             label = percent_pl(bezrobocie, digits = 0))) +
  geom_line(linewidth = 0.7, colour = palette_losy("bezrobocie")["line"]) +
  geom_point(size = 5, colour = palette_losy("bezrobocie")["point"]) +
  geom_text(size = 6, nudge_y = -0.005) +
  scale_x_discrete("Miesiąc")  +
  scale_y_continuous("Odsetek bezrobotnych absolwentów",
                     labels = label_percent_pl(),
                     limits = c(0, NA_real_), expand = c(0, 0, 0.05, 0)) +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresBezrobocieOkresGrupaOdn <-
  ggplot(daneBezrobocieOkresGrupaOdn,
         aes(okres_bezrobocia, pct, fill = grupa,
             label = percent_pl(pct, digits = 0))) +
  facet_wrap(vars(grupa), nrow = 1) +
  geom_col() +
  geom_text(size = 5, nudge_y = 0.03) +
  scale_x_discrete("Liczba miesięcy bezrobocia")  +
  scale_y_continuous("Odsetek absolwentów",
                     labels = label_percent_pl(),
                     limits = c(0, 1), expand = c(0, 0, 0.05, 0)) +
  scale_fill_losy(NULL, type = "grupaOdn", unname = TRUE, guide = "none") +
  theme_losy(axis_ticks = "y")
wykresBezrobociePlec <-
  ggplot(daneBezrobociePlec,
         aes(pct, plec, fill = bezrobocie,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = bezrobocie),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 6) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.02)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "bezrobocie",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "bezrobocie", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresBezrobocieZawod <-
  ggplot(daneBezrobocieZawod,
         aes(pct, nazwa_zaw, fill = bezrobocie,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = bezrobocie),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 6) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.02)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "bezrobocie",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "bezrobocie", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresDyplomyPlec <-
  ggplot(daneDyplomyPlec,
         aes(pct, plec, fill = dyplom,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = dyplom),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 7) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.01)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "dyplomyZaw",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "dyplomyZaw", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresDyplomyZawod <-
  ggplot(daneDyplomyZawod,
         aes(pct, nazwa_zaw, fill = dyplom,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = dyplom),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 7) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.01)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "dyplomyZaw",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "dyplomyZaw", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresFormyZatrudnGrupaOdn <-
  ggplot(daneFormyZatrudnGrupaOdn,
         aes(grupa, pct, fill = forma_zatrudn,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = FALSE)) +
  geom_text(aes(colour = forma_zatrudn),
            position = position_stack(reverse = FALSE, vjust = 0.5),
            size = 6) +
  scale_x_discrete(NULL, expand = c(0, 0)) +
  scale_y_continuous("Odsetek absolwentów", labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.01)) +
  scale_fill_losy(NULL, type = "formyZatrudn",
                  guide = guide_legend(ncol = 1)) +
  scale_colour_losy_fg(NULL, type = "formyZatrudn", guide = "none") +
  theme_losy(axis_ticks = "y")
wykresKontMlodocPracEduGrupaOdn <-
  ggplot(daneKontMlodocPracEduGrupaOdn,
         aes(pct, grupa, fill = kont_mlodoc_prac,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = kont_mlodoc_prac),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 5) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "kontMlodocPracEdu",
                  guide = guide_legend(ncol = 1)) +
  scale_colour_losy_fg(NULL, type = "kontMlodocPracEdu", guide = "none") +
  theme_losy()
wykresKontMlodocPracNeduGrupaOdn <-
  ggplot(daneKontMlodocPracNeduGrupaOdn,
         aes(pct, grupa, fill = kont_mlodoc_prac,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = kont_mlodoc_prac),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 5) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "kontMlodocPracNedu",
                  guide = guide_legend(ncol = 1)) +
  scale_colour_losy_fg(NULL, type = "kontMlodocPracNedu", guide = "none") +
  theme_losy()
wykresKontynuacjeDziedzinyPlec <-
  ggplot(daneKontynuacjeDziedzinyPlec,
         aes(pct, dziedzina, fill = plec,
             label = percent_pl(pct, digits = 0))) +
  geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
  geom_text(position = position_dodge2(width = 1, reverse = TRUE),
            size = 5, hjust = -0.2) +
  scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "plec",
                  guide = guide_legend(ncol = 3)) +
  theme_losy()  +
  dodaj_rok_w_podpisie(rok = 3254)
wykresKontynuacjeDyscyplinyPlec <-
  ggplot(daneKontynuacjeDyscyplinyPlec,
         aes(pct, dyscyplina, fill = plec,
             label = percent_pl(pct, digits = 0))) +
  geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
  geom_text(position = position_dodge2(width = 1, reverse = TRUE),
            size = 5, hjust = -0.2) +
  scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "plec",
                  guide = guide_legend(ncol = 3)) +
  theme_losy()  +
  dodaj_rok_w_podpisie(rok = 3254)
wykresKontynuacjeTypSzk <-
  ggplot(daneKontynuacjeTypSzk,
         aes(pct, kontynuacja, label = percent_pl(pct, digits = 0))) +
  geom_col(position = position_dodge2(width = 1, reverse = TRUE),
           fill = "#009899") +
  geom_text(position = position_dodge2(width = 1, reverse = TRUE),
            size = 6, hjust = -0.2) +
  scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
  scale_y_discrete(NULL) +
  theme_losy()
wykresKontynuacjeTypSzkPlec <-
  ggplot(daneKontynuacjeTypSzkPlec,
         aes(pct, plec, fill = kontynuacja,
             label = percent_pl(pct, digits = 0))) +
  geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
  geom_text(position = position_dodge2(width = 1, reverse = TRUE),
            size = 6, hjust = -0.2) +
  scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
  scale_y_discrete(NULL) +
  scale_fill_losy(NULL, type = "kontynuacje",
                  guide = guide_legend(ncol = 3)) +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresKontynuacjeTypSzkZawod <-
  ggplot(daneKontynuacjeTypSzkZawod,
         aes(pct, nazwa_zaw, fill = kontynuacja,
             label = percent_pl(pct, digits = 0))) +
  geom_col(position = position_dodge2(width = 1, reverse = TRUE)) +
  geom_text(position = position_dodge2(width = 1, reverse = TRUE),
            size = 6, hjust = -0.2) +
  scale_x_continuous(NULL, breaks = NULL, expand = c(0, 0, 0.2, 0)) +
  scale_y_discrete(NULL) +
  scale_fill_losy(NULL, type = "kontynuacje",
                  guide = guide_legend(ncol = 3)) +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresMaturyPlec <-
  ggplot(daneMaturyPlec,
         aes(pct, plec, fill = dyplom,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = dyplom),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 6) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.02)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "matura",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "matura", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresMaturyZawod <-
  ggplot(daneMaturyZawod,
         aes(pct, nazwa_zaw, fill = dyplom,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = dyplom),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 6) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.02)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "matura",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "matura", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresMigracjeWoj <-
  ggplot(zlacz_z_mapa(daneMigracjeWoj),
         aes(fill = pct, colour = pct,
             label = percent_pl(pct, digits = 1))) +
  geom_sf() +
  geom_sf_text(size = 5,
               fun.geometry = st_point_on_surface_sw) +
  geom_sf_text(aes(label = label), colour = "black", size = 5,
               hjust = "left", vjust = "bottom",
               data = function(x) {
                 x <- x[x$nazwa_woj == "nieznane", ]
                 x$label <- rep("Nieznane     \nwojewództwo", nrow(x))
                 if (nrow(x) > 0L) {
                   x$geometry <-
                     sf::st_sfc(sf::st_point(c(210000, 220000)),
                                crs = attributes(x$geometry)$crs)
                 }
                 return(x)
               },
               fun.geometry = st_point_on_surface_sw) +
  scale_x_continuous(NULL, labels = function(x) {return(rep("", length(x)))},
                     expand = c(0, 0)) +
  scale_y_continuous(NULL, labels = function(x) {return(rep("", length(x)))},
                     expand = c(0, 0)) +
  scale_fill_gradient("Procent absolwentów", low = "#efefff", high = "#25304d",
                      guide = "none") +
  scale_colour_gradient_fg(NULL, low = "#efefff", high = "#25304d") +
  theme_losy(axis_ticks = "none") +
  dodaj_rok_w_podpisie(rok = 3254)
wykresPlec <-
  ggplot(danePlec,
         aes(pct, typ_szk, fill = plec,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = plec),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 7) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.02)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "plec",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "plec", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresPracaOkresGrupaOdn <-
  ggplot(danePracaOkresGrupaOdn,
         aes(grupa, pct, fill = okres_pracy,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = FALSE)) +
  geom_text(aes(colour = okres_pracy),
            position = position_stack(reverse = FALSE, vjust = 0.5),
            size = 6) +
  scale_x_discrete(NULL, expand = c(0, 0)) +
  scale_y_continuous("Odsetek absolwentów", labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.01)) +
  scale_fill_losy(NULL, type = "okresPracy",
                  guide = guide_legend(nrow = 1)) +
  scale_colour_losy_fg(NULL, type = "okresPracy", guide = "none") +
  theme_losy(axis_ticks = "y")
library(ggalluvial)
wykresPrzeplywyStatusy <- ggplot(danePrzeplywyStatusy,
       aes(x = okres, alluvium = idKombinacji,
           y = pct,
           stratum = status, fill = status)) +
  geom_flow(reverse = FALSE) +
  geom_stratum(reverse = FALSE) +
  geom_text(aes(label = percent_pl(after_stat(prop),
                                   digits = 1, hideBelow = 0.05),
                colour = status),
            size = 6, reverse = FALSE, stat = "stratum") +
  stat_flow(aes(weight = pctStatus,
                label = ifelse(after_stat(flow) == "from",
                               percent_pl(after_stat(n), digits = 1),
                               ""),
                alpha = ifelse(after_stat(flow) == "from", 1, 0)),
            size = 4,
            reverse = FALSE, position = position_nudge(x = 0.25),
            min.y = 0.01,
            geom = "text") +
  scale_x_discrete(NULL, expand = c(0, 0)) +
  scale_y_continuous("Procent", labels = label_percent_pl(), expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "statusy") +
  scale_colour_losy_fg(NULL, type = "statusy", guide = "none") +
  scale_alpha_identity(guide = guide_none()) +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 2024)
wykresPrzychodyGrupaOdn <-
  ggplot(danePrzychodyGrupaOdn,
         aes(grupa)) +
  geom_boxplot(aes(ymin = c05, lower = c25, middle = c50, upper = c75,
                   ymax = c95, fill = grupa),
               stat = "identity", staplewidth = 1, linewidth = 1,
               width = 0.6) +
  geom_text(aes(y = wartosc, label = percent_pl(wartosc, digits = 0)),
            data = ~data.frame(grupa = rep(.x$grupa, 5),
                               wartosc = unlist(.x[, c("c05", "c25", "c50",
                                                       "c75", "c95")])),
            size = 5, position = position_nudge(x = -0.4)) +
  scale_x_discrete(NULL, expand = c(0, 0.6, 0, 0.5)) +
  scale_y_continuous(paste(c("Przychody absolwentów z pracy etatowej",
                             "w odniesieniu do przeciętnego",
                             "wynagrodzenia w powiatach"), collapse = "\n"),
                     labels = label_percent_pl(),
                     limits = c(0, NA_real_), expand = c(0, 0, 0, 0.01)) +
  scale_fill_losy(NULL, type = "grupaOdn", unname = TRUE, guide = "none") +
  theme_losy(axis_ticks = "y")
wykresStatusy <-
  ggplot(daneStatusy,
         aes(miesiac, pct, fill = status,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = status),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 5) +
  scale_x_discrete("Miesiąc") +
  scale_y_continuous("Odsetek absolwentów", labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0)) +
  scale_fill_losy(NULL, type = "statusy",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "statusy", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresStatusyPlec <-
  ggplot(daneStatusyPlec,
         aes(pct, plec, fill = status,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = status),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 7) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.01)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "statusy",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "statusy", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresStatusyZawod <-
  ggplot(daneStatusyZawod,
         aes(pct, nazwa_zaw, fill = status,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = status),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 7) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.01)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "statusy",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "statusy", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)
wykresStatusyGrupaOdn <-
  ggplot(daneStatusyGrupaOdn,
         aes(pct, grupa, fill = status,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = status),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 7) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.01)) +
  scale_y_discrete(NULL, expand = c(0, 0)) +
  scale_fill_losy(NULL, type = "statusy",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "statusy", guide = "none") +
  theme_losy()
wykresTypySzkol <-
  ggplot(daneTypySzkol,
         aes(pct, factor(rok_abs), fill = typ_szk,
             label = percent_pl(pct, digits = 0, hideBelow = 0.05))) +
  geom_col(position = position_stack(reverse = TRUE)) +
  geom_text(aes(colour = typ_szk),
            position = position_stack(reverse = TRUE, vjust = 0.5),
            size = 7) +
  scale_x_continuous(NULL, labels = label_percent_pl(),
                     expand = c(0, 0, 0, 0.01)) +
  scale_y_discrete(NULL, expand = c(0, 0))  +
  scale_fill_losy(NULL, type = "typySzkol",
                  guide = guide_legend(ncol = 2)) +
  scale_colour_losy_fg(NULL, type = "typySzkol", guide = "none") +
  theme_losy() +
  dodaj_rok_w_podpisie(rok = 3254)

save(list = ls(), file = "data/plots.RData", compress = "xz")
rm(list = ls())
