#' Read an entire Excel file workbook
#'
#' @param path Path to the xls/xlsx file
#' @param save2env Either TRUE to save each worksheet to the environment or FALSE to return a list of worksheets, which can be saved to the environment
#' @return list of data frames that represent each worksheet
#' @export



read_excel_all <- function(path = "",save2env="FALSE") {
  sheetnames <- readxl::excel_sheets(path)
  make.sheetnames <- make.names(sheetnames,unique = TRUE)
  workbook <-
    lapply(sheetnames, function(x)
      readxl::read_excel(path, sheet = x))
  names(workbook) <- make.sheetnames
  for (i in 1:length(sheetnames)) {
    names(workbook[[i]]) <- make.names(names(workbook[[i]]),unique = TRUE)
  }
  if (isTRUE(save2env))
  {list2env(workbook, .GlobalEnv)}
  else{workbook}
}
