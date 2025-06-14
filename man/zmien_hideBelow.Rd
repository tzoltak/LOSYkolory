% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zmien_prog_pokazywania_etykiet.R
\name{zmien_hideBelow}
\alias{zmien_hideBelow}
\title{Modyfikowanie elementow wykresu}
\usage{
zmien_hideBelow(x, zmiana)
}
\arguments{
\item{x}{wyrażenie (\emph{expression})}

\item{zmiana}{nowa wartość, która ma być przypisana napotkanym w \code{x}
przypisaniem wartości argumentu \code{hideBelow}}
}
\value{
zmodyfikowane wyrażenie
}
\description{
Nieeksportowana funkcja wykorzystywana wewnętrznie przez
\code{\link[=zmien_prog_pokazywania_etykiet]{zmien_prog_pokazywania_etykiet()}}, modyfikuje wartości przypisane do
argumentów \code{hideBelow} w podanym wyrażeniu.
}
\details{
Funkcja działa w sposób dosyć prostacki, zamieniając podane wyrażenie na
ciąg znaków i modyfikując je przy pomocy wyrażenia regularnego. Używane
wyrażenie regularne zakłada, że:
\itemize{
\item w zmienianym przypisaniu argumentem \code{hideBelow} przekazywana była
pojedyncza, nieujemna i skończona wartość liczbowa (w zapisie dziesiętnym),
\item wszystkie takie napotkane przypisania wartości do nazwy \emph{hideBelow}
opisują przekazywanie wartości argumentu do funkcji.
}

\strong{Założenia te} dobrze pasują do sytuacji, gdy modyfikowane są szablony
wykresów zawarte w tym pakiecie (\link{wykresDyplomy},
\link{wykresKontynuacjeDziedziny}, \link{wykresKontynuacjeTypSzk}, \link{wykresMatury},
\link{wykresPlec}, \link{wykresStatusy}, \link{wykresStatusyPlec}, \link{wykresTypySzkol}), ale
\strong{w ogólności mogą się nie sprawdzać}.
}
