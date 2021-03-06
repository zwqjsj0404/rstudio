\name{button}
\alias{button}
\title{Create a button control}
\description{
  Create a button control to enable triggering of conditional actions within manipulate expressions. When the user presses the button the manipulate expression will be executed with its associated value set to TRUE (in all other cases the value will be set to FALSE). 
}
\usage{
button(label)
}


\arguments{
  \item{label}{
    Label for button.
}
}

\value{
   An object of class "manipulator.button" which can be passed to the \code{\link{manipulate}} function.
}


\seealso{
  \code{\link{manipulate}}, \code{\link{slider}}, \code{\link{picker}}, \code{\link{checkbox}}
}

\examples{
\dontrun{

## use a button to reset a random seed
manipulate(
  {
    if(resetSeed)
      set.seed(sample(1:1000))

    hist(rnorm(n=100, mean=0, sd=3), breaks=bins)
  },
  bins = slider(1, 20, step=1, initial =5, label="Bins"),
  resetSeed = button("Reset Seed")
)

}
}

