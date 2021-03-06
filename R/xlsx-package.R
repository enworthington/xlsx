#' Read, write, format Excel 2007 and Excel 97/2000/XP/2003 files
#'
#' The \code{xlsx} package gives programatic control of Excel files using R.  A
#' high level API allows the user to read a sheet of an xlsx document into a
#' \code{data.frame} and write a \code{data.frame} to a file.  Lower level
#' functionality permits the direct manipulation of sheets, rows and cells.
#' For example, the user has control to set colors, fonts, data formats, add
#' borders, hide/unhide sheets, add/remove rows, add/remove sheets, etc.
#'
#' Behind the scenes, the \code{xlsx} package uses a java library from the
#' Apache project, \url{http://poi.apache.org/index.html}.  This Apache project
#' provides a Java API to Microsoft Documents (Excel, Word, PowerPoint,
#' Outlook, Visio, etc.)  By using the \code{rJava} package that links and
#' Java, we can piggyback on the excellent work already done by the folks at
#' the Apache project and provide this functionality in R.  The \code{xlsx}
#' package uses only a subset of the Apache POI project, namely the one dealing
#' with Excel files.  All the necessary jar files are kept in package
#' \code{xlsxjars} that is imported by package \code{xlsx}.
#'
#' A collection of tests that can be used as examples are located in folder
#' \code{/tests/}.  They are a good source of examples of how to use the
#' package.
#'
#' Please see \url{https://github.com/colearendt/xlsx/} for a Wiki and the
#' development version.  To report a bug, use the Issues page at
#' \url{https://github.com/colearendt/xlsx/issues}.
#'
#' \tabular{ll}{ Package: \tab xlsx\cr Type: \tab Package\cr Version: \tab
#' 0.6.0\cr Date: \tab 2015-11-29\cr License: \tab GPL-3\cr }
#'
#' @aliases xlsx-package xlsx
#' @docType package
#'
#' @seealso \code{\link{Workbook}} for ways to work with \code{Workbook}
#' objects.
#' @references Apache POI project for Microsoft Excel format:
#' \url{http://poi.apache.org/spreadsheet/index.html}.
#'
#' The Java Doc detailing the classes:
#' \url{http://poi.apache.org/apidocs/index.html}.  This can be useful if you
#' are looking for something that is not exposed in R as it may be available on
#' the Java side.  Inspecting the source code for some the the functions in
#' this package can show you how to do it (even if you are Java shy.)
#' @keywords package
#' @examples
#'
#' \dontrun{
#'
#' library(xlsx)
#'
#' # example of reading xlsx sheets
#' file <- system.file("tests", "test_import.xlsx", package = "xlsx")
#' res <- read.xlsx(file, 2)  # read the second sheet
#'
#' # example of writing xlsx sheets
#' file <- paste(tempfile(), "xlsx", sep=".")
#' write.xlsx(USArrests, file=file)
#'
#' }
#'
#' @import rJava
#' @import xlsxjars
#' @importFrom utils unzip
#' @importFrom utils zip
#' @name xlsx-package
NULL
