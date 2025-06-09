#' @title Obliczanie luminacji
#' @description
#' Oblicza relatywną luminację koloru zgodnie z definicją stosowaną we WCAG 2.x.
#' @param x wektor opisujący kolory, przekazywany do [grDevices::col2rgb()]
#' @param errata opcjonalnie wartość logiczna (bez praktycznego znaczenia):
#' czy skorygować próg przejścia z funkcji wykładniczej na funkcję liniową tak,
#' aby był zgodny ze standardem IEC sRGB (tj. 0,04045 zamiast 0,03928)?
#' @returns wektor liczb z przedziału \[0, 1\]
#' @seealso <https://www.w3.org/WAI/GL/wiki/Relative_luminance>,
#' <https://www.color.org/srgb.pdf> oraz
#' <https://en.wikipedia.org/wiki/Relative_luminance>
#' i [compute_contrast_ratio()], ale też [compute_screen_luminance()]
#' @importFrom grDevices col2rgb
#' @examples
#' compute_relative_luminance(
#'   c("#888", "#fff", "#000", "#aaa", "#123", "#def", "#123", "#444"))
#' @export
compute_relative_luminance <- function(x, errata = FALSE) {
  stopifnot(is.logical(errata), length(errata) == 1L,
            errata %in% c(FALSE, TRUE))
  if (errata) {
    threshold <- 0.04045
  } else {
    threshold <- 0.03928
  }
  x <- col2rgb(x) / 255
  return(0.2126*ifelse(x["red", ] <= threshold,
                       x["red", ]/12.92,
                       ((x["red", ] + 0.055)/1.055)^2.4) +
           0.7152*ifelse(x["green", ] <= threshold,
                         x["green", ]/12.92,
                         ((x["green", ] + 0.055)/1.055)^2.4) +
           0.0722*ifelse(x["blue", ] <= threshold,
                         x["blue", ]/12.92,
                         ((x["blue", ] + 0.055)/1.055)^2.4))
}
#' @title Obliczanie kontrastu
#' @description
#' Oblicza stosunek kontrastu (*contrast ratio*) zgodnie z definicją stosowaną
#' we WCAG 2.x.
#' @param x wektor opisujący kolory (przekazywany do [grDevices::col2rgb()])
#' @param y wektor opisujący kolory (przekazywany do [grDevices::col2rgb()])
#' @returns wektor liczb z przedziału \[1, 21\]
#' @seealso <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html#contrast-ratiodef>
#' i [compute_relative_luminance()], ale też [compute_apca_contrast()]
#' @examples
#' compute_contrast_ratio(
#'   c("#888", "#000", "#123", "#123"),
#'   c("#fff", "#aaa", "#def", "#444"))
#' @export
compute_contrast_ratio <- function(x, y) {
  Lx <- compute_relative_luminance(x)
  Ly <- compute_relative_luminance(y)
  return((ifelse(Lx > Ly, Lx, Ly) + 0.05) / (ifelse(Lx > Ly, Ly, Lx) + 0.05))
}
#' @title Obliczanie luminacji
#' @description
#' Oblicza *ekranową* luminację koloru zgodnie z definicją stosowaną w APCA
#' 0.1.9 4g (*Accessible Perceptual Contrast Algorithm*).
#' @param x wektor opisujący kolory, przekazywany do [grDevices::col2rgb()]
#' @returns wektor liczb z przedziału \[0, 1\]
#' @seealso <https://github.com/Myndex/SAPC-APCA/tree/master/documentation>,
#' <https://www.w3.org/WAI/GL/task-forces/silver/wiki/User:Myndex/APCA_model>,
#' [compute_apca_contrast()], ale też [compute_relative_luminance()]
#' @examples
#' compute_screen_luminance(
#'   c("#888", "#fff", "#000", "#aaa", "#123", "#def", "#123", "#444"))
#' @importFrom grDevices col2rgb
#' @export
compute_screen_luminance <- function(x) {
  x <- col2rgb(x) / 255
  Strc <- 2.4
  return(0.2126729*x["red", ]^Strc +
           0.7151522*x["green", ]^Strc +
           0.0721750*x["blue", ]^Strc)
}
#' @title Obliczanie kontrastu
#' @description
#' Oblicza *kontrast jasności* (*Lightness Contrast*) zgodnie z definicją
#' stosowaną w APCA 0.1.9 4g (*Accessible Perceptual Contrast Algorithm*)
#' i WCAG 3.
#' @param fg wektor opisujący kolory pierwszoplanowe/tekstu
#' (przekazywany do [grDevices::col2rgb()])
#' @param bg wektor opisujący kolory tła (przekazywany do [grDevices::col2rgb()])
#' @returns wektor liczb z przedziału \[0, 100\]
#' @seealso <https://github.com/Myndex/SAPC-APCA/tree/master/documentation>,
#' <https://www.w3.org/WAI/GL/task-forces/silver/wiki/User:Myndex/APCA_model>,
#' [compute_screen_luminance()], ale też [compute_contrast_ratio()]
#' @examples
#' # przykłady z:
#' # <https://github.com/Myndex/SAPC-APCA/tree/master/documentation#testing-your-implementation>
#' compute_apca_contrast(
#'   c("#888", "#fff", "#000", "#aaa", "#123", "#def", "#123", "#444"),
#'   c("#fff", "#888", "#aaa", "#000", "#def", "#123", "#444", "#123"))
#' # test poprawności implementacji:
#' stopifnot(all((compute_apca_contrast(c("#888", "#fff",
#'                                        "#000", "#aaa",
#'                                        "#123", "#def",
#'                                        "#123", "#444"),
#'                                      c("#fff", "#888",
#'                                        "#aaa", "#000",
#'                                        "#def", "#123",
#'                                        "#444", "#123")) -
#'                c(63.056469930209424, -68.54146436644962,
#'                  58.146262578561334, -56.24113336839742,
#'                  91.66830811481631, -93.06770049484275,
#'                   8.32326136957393,  -7.526878460278154)) < 0.000000000001))
#' @export
compute_apca_contrast <- function(fg, bg) {
  fg <- compute_screen_luminance(fg)
  bg <- compute_screen_luminance(bg)
  Bthrsh <- 0.022
  Bclip <- 1.414
  fg <- ifelse(fg < Bthrsh, fg + (Bthrsh - fg)^Bclip, fg)
  bg <- ifelse(bg < Bthrsh, bg + (Bthrsh - bg)^Bclip, bg)
  Nbg <- 0.56
  Ntx <- 0.57
  Rbg <- 0.65
  Rtx <- 0.62
  Wscale <- 1.14
  Wclamp <- 0.1
  Woffset <- 0.027
  Sapc <- ifelse(bg > fg,
                 (bg^Nbg - fg^Ntx)*Wscale,
                 (bg^Rbg - fg^Rtx)*Wscale)
  return(ifelse(abs(Sapc) < Wclamp,
                0,
                ifelse(Sapc > 0,
                       (Sapc - Woffset)*100,
                       (Sapc + Woffset)*100)))
}
#' @title Obliczanie kontrastu
#' @description
#' Dla zadanego wektora kolorów tła wybiera bardziej kontrastowy z zadanego
#' zestawu możliwych do wyboru kolorów pierwszoplanowych/tekstu.
#' @param bg wektor opisujący kolory tła (przekazywany do [grDevices::col2rgb()])
#' @param fg opcjonalnie wektor opisujący kolory pierwszoplanowe/tekstu,
#' (przekazywany do [grDevices::col2rgb()]) spośród których nastąpi wybór
#' (domyślnie biały lub czarny)
#' @param wcag opcjonalnie wersja standardu WCAG (domyślnie 3), wg której ma być
#' obliczany kontrast (por. [compute_apca_contrast] i [compute_contrast_ratio])
#' @returns wektor tekstowy z kodami RGB wybranych kolorów
#' pierwszoplanowych/tekstu
#' @examples
#' # różnice między WCAG 2 a WCAG 3 są znaczne:
#' pick_more_contrasting(palette_losy("statusy"), wcag = "3")
#' pick_more_contrasting(palette_losy("statusy"), wcag = "2")
#' @export
pick_more_contrasting <- function(bg, fg = c("#000000", "#FFFFFF"),
                                  wcag = c("3", "2")) {
  wcag <- match.arg(wcag, several.ok = FALSE)
  if (wcag == 3) {
    contrFun <- compute_apca_contrast
  } else {
    contrFun <- compute_contrast_ratio
  }
  contrasts <- sapply(bg,
                      function(bg, fg) {
                        return(do.call(contrFun,
                                       args = list(rep(bg, length(fg)),
                                                   fg)))
                      }, fg)
  rownames(contrasts) <- fg
  choices <- fg[apply(abs(contrasts), 2, which.max)]
  names(choices) <- names(bg)
  attributes(choices)$contrasts <- contrasts
  attributes(choices)$wcag <- wcag
  return(choices)
}
