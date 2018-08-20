% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/export_workspace.R
\name{add_sa_item}
\alias{add_sa_item}
\title{Add a seasonnaly adjust model to a multi-processing}
\usage{
add_sa_item(workspace, multiprocessing, sa_obj, name)
}
\arguments{
\item{workspace}{the workspace to add the seasonnaly adjust model.}

\item{multiprocessing}{the name or index of the multiprocessing to add the seasonnaly adjust model.}

\item{sa_obj}{the seasonnaly adjust object to export.}

\item{name}{The name of the seasonnaly adjust model in the multiprocessing
By default the name of the \code{sa_obj} is used.}
}
\description{
Function to add a new seasonnaly adjust object (class \code{c("SA","X13")} or \code{c("SA","TRAMO_SEATS"}) in a \code{workspace} object.
}
\examples{
\dontrun{
spec_x13 <- x13_spec_def(spec = c("RSA5c"), easter.enabled = FALSE)
sa_x13 <- x13(myseries, spec = spec_x13)
spec_ts <- tramoseats_spec_def(spec = c("RSA5"))
sa_ts <- tramoseats(myseries, spec = spec_ts)

wk <- new_workspace()
new_multiprocessing(wk, "sa1")
add_sa_item(wk, "sa1", sa_x13, "X13")
add_sa_item(wk, "sa1", sa_ts, "TramoSeats")

save_workspace(wk, "workspace.xml")
}

}
\seealso{
\code{\link{load_workspace}}, \code{\link{save_workspace}}
}