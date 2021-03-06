\name{nodeplotboot}
\alias{nodeplotboot}
\title{Generates a function for labeling bootstrap values on a phylogenetic tree.}
\usage{
  nodeplotboot(highthresh=95L, lowcthresh=50L, size=2L,
  hjust=-0.2)
}
\arguments{
  \item{highthresh}{(Optional). A single integer between 0
  and 100. Any bootstrap values above this threshold will
  be annotated as a black filled circle on the node, rather
  than the bootstrap percentage value itself.}

  \item{lowcthresh}{(Optional). A single integer between 0
  and 100, less than \code{highthresh}. Any bootstrap
  values below this value will not be added to the graphic.
  Set to 0 or below to add all available values.}

  \item{size}{(Optional). Numeric. Should be positive. The
  size parameter used to control the text size of taxa
  labels. Default is \code{2}. These are ggplot2 sizes.}

  \item{hjust}{(Optional). The horizontal justification of
  the node labels. Default is \code{-0.2}.}
}
\value{
  A function that can add a bootstrap-values layer to the
  tree graphic. The values are represented in two ways;
  either as black filled circles indicating very
  high-confidence nodes, or the bootstrap value itself
  printed in small text next to the node on the tree.
}
\description{
  Is not a labeling function itself, but returns one. The
  returned function is specialized for labeling bootstrap
  values. Note that the function that is returned has two
  completely different arguments from the four listed here:
  the plot object already built by earlier steps in
  \code{\link{plot_tree}}, and the \code{\link{data.frame}}
  that contains the relevant plotting data for the nodes
  (especially \code{x, y, label}), respectively. See
  \code{\link{nodeplotdefault}} for a simpler example. The
  main purpose of this and \code{\link{nodeplotdefault}} is
  to provide a useful default function generator for
  arbitrary and bootstrap node labels, respectively, and
  also to act as examples of functions that can
  successfully interact with \code{\link{plot_tree}} to add
  node labels to the graphic.
}
\examples{
nodeplotboot()
nodeplotboot(3, -0.4)
}
\seealso{
  \code{\link{nodeplotdefault}}

  \code{\link{nodeplotblank}}

  \code{\link{plot_tree}}
}

