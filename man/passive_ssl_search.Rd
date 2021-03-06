% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssl.r
\name{passive_ssl_search}
\alias{passive_ssl_search}
\title{Get the SSL certificate associated with the SHA-1.}
\usage{
passive_ssl_search(query, field, auth = passive_auth())
}
\arguments{
\item{query}{Query value to use in your request.}

\item{field}{Field to search against: \code{issuerSurname},
\code{subjectOrganizationName}, \code{issuerCountry},
\code{issuerOrganizationUnitName}, \code{fingerprint},
\code{subjectOrganizationUnitName}, \code{serialNumber},
\code{subjectEmailAddress}, \code{subjectCountry}, \code{issuerGivenName},
\code{subjectCommonName}, \code{issuerCommonName},
\code{issuerStateOrProvinceName}, \code{issuerProvince},
\code{subjectStateOrProvinceName}, \code{sha1}, \code{sslVersion},
\code{subjectStreetAddress}, \code{subjectSerialNumber},
\code{issuerOrganizationName}, \code{subjectSurname},
\code{subjectLocalityName}, \code{issuerStreetAddress},
\code{issuerLocalityName}, \code{subjectGivenName}, \code{subjectProvince},
\code{issuerSerialNumber}, \code{issuerEmailAddress}}

\item{auth}{\code{list} containing PassiveTotal \code{user} & \code{key}}
}
\value{
\code{list}
}
\description{
Get the SSL certificate associated with the SHA-1.
}
\note{
All API function in the \code{passivetotal} pacake use \code{memoise::memoise} to
      cache results. Call \code{forget(passive_ssl_search)} to invalidate the cache for this
      function.
}
\examples{
\dontrun{
passive_ssl_search(query="www.passivetotal.org", field="subjectCommonName")
}
}
\references{
\url{https://api.passivetotal.org/api/docs/#api-SSL_Certificates-GetV2SslCertificateSearchQueryField}
}
\seealso{
Other SSL functions: \code{\link{passive_ssl_certificate}},
  \code{\link{passive_ssl_history}}
}

