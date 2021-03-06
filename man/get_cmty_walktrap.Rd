% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_cmty_walktrap.R
\name{get_cmty_walktrap}
\alias{get_cmty_walktrap}
\title{Get community membership using the Walktrap method}
\usage{
get_cmty_walktrap(graph, steps = 4)
}
\arguments{
\item{graph}{a graph object of
class \code{dgr_graph}.}

\item{steps}{the number of steps
to take for each of the random walks.}
}
\value{
a data frame with group
membership assignments for each of
the nodes.
}
\description{
With the Walktrap
community finding algorithm, obtain
the group membership values for
each of the nodes in the graph.
}
\examples{
# Create a random graph using the
# `add_gnm_graph()` function
graph <-
  create_graph(
    directed = FALSE) \%>\%
  add_gnm_graph(
    n = 10,
    m = 15,
    set_seed = 23)

# Get the group membership
# values for all nodes in the
# graph through the Walktrap
# community finding algorithm
graph \%>\%
  get_cmty_walktrap()

# Add the group membership
# values to the graph as a
# node attribute
graph <-
  graph \%>\%
  join_node_attrs(
    df = get_cmty_walktrap(.))

# Display the graph's
# node data frame
graph \%>\%
  get_node_df()
}
