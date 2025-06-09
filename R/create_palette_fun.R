#' @title Skale kolorow
#' @description
#' Nieeksportowana fabryka funkcji do wykorzystania wewnętrznie przez
#' [scale_color_losy()] i [scale_fill_losy()] w ramach mechanizmu skal kolorów
#' *ggplot2*.
#' @inheritParams palette_losy
#' @returns Funkcja zwracająca paletę kolorów (przyjmująca jako parametr liczbę
#' kolorów w zwracanej palecie, która jednak będzie działać tylko dla jednej
#' liczby kolorów - kompatybilnej z liczbą kolorów w skali kolorów podanego
#' typu, zwracanej przez [palette_losy()]).
create_palette_losy_fun <- function(type) {
  paleta <- palette_losy(type)
  fun <- function(n) {
    return(paleta)
  }
  return(fun)
}
#' @title Skale kolorow
#' @description
#' Nieeksportowana fabryka funkcji do wykorzystania wewnętrznie przez
#' [scale_color_losy_fg()] i [scale_fill_losy_fg()] w ramach mechanizmu skal kolorów
#' *ggplot2*.
#' @inheritParams palette_losy
#' @inheritParams pick_more_contrasting
#' @param fgToChoose wektor kolorów (opisanych w dowolny sposób zrozumiały dla
#' [grDevices::col2rgb()]), spośród których wybierane będą bardziej kontrastowe
#' w stosunku do kolorów skali, na którą wskazuje wartość argumentu `type`
#' @returns Funkcja zwracająca paletę kolorów (przyjmująca jako parametr liczbę
#' kolorów w zwracanej palecie, która jednak będzie działać tylko dla jednej
#' liczby kolorów - kompatybilnej z liczbą kolorów w skali kolorów podanego
#' typu, zwracanej przez [palette_losy()]).
create_palette_losy_fg_fun <- function(type, fgToChoose, wcag = "3") {
  paleta <- pick_more_contrasting(palette_losy(type), fgToChoose, wcag)
  fun <- function(n) {
    return(paleta)
  }
  return(fun)
}
