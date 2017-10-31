executeSparql <- function(endpoint, query){
  library(SPARQL)
  fmt <- "csv"
  res <- SPARQL(endpoint,query,format=fmt,curl_args=list(httpheader=list(Accept="text/csv")))$results
  return(res)
}
