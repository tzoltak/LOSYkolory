#' @title Przygotowanie danych do kartogramow
#' @description
#' Funkcja opakowuje wywołanie `sf::st_point_on_surface(sf::st_zm(x))`
#' w wywołanie `suppressWarnings()`, aby można było użyć jej jako argumentu
#' `fun.geometry` w wywołaniach [ggplot2::geom_sf_text()] lub
#' [ggplot2::geom_sf_label()]. Umożliwia to uniknięcie wywoływania przez,
#' używane w domyślny sposób, ww. funkcje pakietu *ggplot2* ostrzeżeń o tym, że
#' [sf::st_point_on_surface()] może dawać nieprecyzyjne wyniki, jeśli jest
#' stosowana w odniesieniu do obiektów [sf::sf] ze współrzędnymi opisanymi
#' w ramach projekcji sferycznych (tj. jako szerokość i długość geograficzna).
#' Wobec relatywnie niewielkiej rozległości Polski problem ten jest jednak
#' pomijalny (nie da się za to w inny sposób łatwo wyłączyć tego ostrzeżenia).
#'
#' Nawiasem mówiąc, problem ten można by też rozwiązać używając geometrii
#' zapisanych w projekcji nie przysparzającej takich kłopotów (np. EPSG 2180, co
#' można uzyskać wywołując `sf::st_transform(sfWoj, 2180)`). Z tym że wiązało by
#' to się z pewną zmianą kształtu geometrii wyświetlanych na wykresie.
#' @param x obiekt klasy *sfg*, [sf::sfc] lub [sf::sf]
#' @returns obiekt tej samej klasy, co `x`, ale z przekształconą geometrią
#' (p. [sf::st_point_on_surface()] i [sf::st_zm()])
#' @examples
#' st_point_on_surface_sw(sfWoj)
#' \dontrun{
#'   sf::st_point_on_surface(sfWoj) # generuje ostrzeżenie
#' }
#' @seealso [wykresMigracjeWoj], [ggplot2::geom_sf_text()]
#' @importFrom sf st_point_on_surface st_zm
#' @export
st_point_on_surface_sw <- function(x) {
  return(suppressWarnings(st_point_on_surface(st_zm(x))))
}
